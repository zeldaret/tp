#include "dolphin/dsp/dsp_task.h"
#include "dolphin/dsp/dsp_debug.h"

/* 80451914-80451918 000E14 0004+00 2/2 2/2 0/0 .sbss            __DSP_curr_task */
DSPTaskInfo* __DSP_curr_task;

/* 80451910-80451914 000E10 0004+00 2/2 2/2 0/0 .sbss            __DSP_first_task */
DSPTaskInfo* __DSP_first_task;

/* 8045190C-80451910 000E0C 0004+00 2/2 1/1 0/0 .sbss            __DSP_last_task */
DSPTaskInfo* __DSP_last_task;

/* 80451908-8045190C 000E08 0004+00 0/0 1/1 0/0 .sbss            __DSP_tmp_task */
DSPTaskInfo* __DSP_tmp_task;

void __DSP_exec_task();
void __DSP_boot_task();
void __DSP_insert_task();
void __DSP_remove_task();

/* 803525D0-80352770 34CF10 01A0+00 0/0 1/1 0/0 .text            __DSP_exec_task */
void __DSP_exec_task(DSPTaskInfo* curr, DSPTaskInfo* next) {
    if (curr) {
        DSPSendMailToDSP((u32)(curr->dram_mmem_addr));
        while (DSPCheckMailToDSP())
            ;
        DSPSendMailToDSP((u32)(curr->dram_length));
        while (DSPCheckMailToDSP())
            ;
        DSPSendMailToDSP((u32)(curr->dram_addr));
        while (DSPCheckMailToDSP())
            ;
    } else {
        DSPSendMailToDSP((u32)(0));
        while (DSPCheckMailToDSP())
            ;
        DSPSendMailToDSP((u32)(0));
        while (DSPCheckMailToDSP())
            ;
        DSPSendMailToDSP((u32)(0));
        while (DSPCheckMailToDSP())
            ;
    }

    DSPSendMailToDSP((u32)(next->iram_mmem_addr));
    while (DSPCheckMailToDSP())
        ;
    DSPSendMailToDSP((u32)(next->iram_length));
    while (DSPCheckMailToDSP())
        ;
    DSPSendMailToDSP((u32)(next->iram_addr));
    while (DSPCheckMailToDSP())
        ;

    if (DSP_TASK_STATE_INIT == next->state) {
        DSPSendMailToDSP((u32)(next->dsp_init_vector));
        while (DSPCheckMailToDSP())
            ;
        DSPSendMailToDSP((u32)(0));
        while (DSPCheckMailToDSP())
            ;
        DSPSendMailToDSP((u32)(0));
        while (DSPCheckMailToDSP())
            ;
        DSPSendMailToDSP((u32)(0));
        while (DSPCheckMailToDSP())
            ;
    } else {
        DSPSendMailToDSP((u32)(next->dsp_resume_vector));
        while (DSPCheckMailToDSP())
            ;
        DSPSendMailToDSP((u32)(next->dram_mmem_addr));
        while (DSPCheckMailToDSP())
            ;

        DSPSendMailToDSP((u32)(next->dram_length));
        while (DSPCheckMailToDSP())
            ;

        DSPSendMailToDSP((u32)(next->dram_addr));
        while (DSPCheckMailToDSP())
            ;
    }
}

#define MSG_BASE 0x80F30000

/* 80352770-803528FC 34D0B0 018C+00 0/0 1/1 0/0 .text            __DSP_boot_task */
void __DSP_boot_task(DSPTaskInfo* task) {
    volatile u32 mail;

    while (!DSPCheckMailFromDSP())
        ;

    mail = DSPReadMailFromDSP();

    DSPSendMailToDSP(MSG_BASE | 0xA001);
    while (DSPCheckMailToDSP()) {
    }
    DSPSendMailToDSP((u32)(task->iram_mmem_addr));
    while (DSPCheckMailToDSP()) {
    }

    DSPSendMailToDSP(MSG_BASE | 0xC002);
    while (DSPCheckMailToDSP()) {
    }
    DSPSendMailToDSP((u32)(task->iram_addr & 0xffff));
    while (DSPCheckMailToDSP()) {
    }

    DSPSendMailToDSP(MSG_BASE | 0xA002);
    while (DSPCheckMailToDSP()) {
    }
    DSPSendMailToDSP(task->iram_length);
    while (DSPCheckMailToDSP()) {
    }

    DSPSendMailToDSP(MSG_BASE | 0xB002);
    while (DSPCheckMailToDSP()) {
    }
    DSPSendMailToDSP(0x00000000);
    while (DSPCheckMailToDSP()) {
    }

    DSPSendMailToDSP(MSG_BASE | 0xD001);
    while (DSPCheckMailToDSP()) {
    }
    DSPSendMailToDSP((u32)(0xffff & task->dsp_init_vector));
    while (DSPCheckMailToDSP()) {
    }

    __DSP_debug_printf("DSP is booting task: 0x%08X\n", task);
    __DSP_debug_printf("__DSP_boot_task()  : IRAM MMEM ADDR: 0x%08X\n",
                       (u32)(task->iram_mmem_addr));
    __DSP_debug_printf("__DSP_boot_task()  : IRAM DSP ADDR : 0x%08X\n", (u32)(task->iram_addr));
    __DSP_debug_printf("__DSP_boot_task()  : IRAM LENGTH   : 0x%08X\n", (u32)(task->iram_length));
    __DSP_debug_printf("__DSP_boot_task()  : DRAM MMEM ADDR: 0x%08X\n", (u32)(task->dram_length));
    __DSP_debug_printf("__DSP_boot_task()  : Start Vector  : 0x%08X\n",
                       (u32)(task->dsp_init_vector));
}

/* 803528FC-8035299C 34D23C 00A0+00 0/0 1/1 0/0 .text            __DSP_insert_task */
void __DSP_insert_task(DSPTaskInfo* task) {
    DSPTaskInfo* temp;

    if (__DSP_first_task == NULL) {
        __DSP_first_task = __DSP_last_task = __DSP_curr_task = task;
        task->next = task->prev = NULL;
    } else {
        temp = __DSP_first_task;

        while (temp) {
            if (task->priority < temp->priority) {
                task->prev = temp->prev;
                temp->prev = task;
                task->next = temp;
                if (task->prev == NULL) {
                    __DSP_first_task = task;
                } else {
                    (task->prev)->next = task;
                }
                break;
            }
            temp = temp->next;
        }

        if (temp == NULL) {
            __DSP_last_task->next = task;
            task->next = NULL;
            task->prev = __DSP_last_task;
            __DSP_last_task = task;
        }
    }
}

// Unused, but close enough.
void __DSP_add_task(DSPTaskInfo* task) {
    if (__DSP_last_task == NULL) {
        __DSP_first_task = __DSP_last_task = __DSP_curr_task = task;
        task->next = task->prev = NULL;
    } else {
        __DSP_last_task->next = task;
        task->next = NULL;
        task->prev = __DSP_last_task;
        __DSP_last_task = task;
    }
    __DSP_debug_printf("__DSP_add_task() : Added task    : 0x%08X\n", (u32)(task->next));
}

/* 8035299C-80352A30 34D2DC 0094+00 0/0 1/1 0/0 .text            __DSP_remove_task */
void __DSP_remove_task(DSPTaskInfo* task) {
    task->flags = DSP_TASK_FLAG_CLEARALL;
    task->state = DSP_TASK_STATE_DONE;

    if (__DSP_first_task == task) {
        if (task->next) {
            __DSP_first_task = (task->next);
            task->next->prev = NULL;
        } else {
            __DSP_first_task = __DSP_last_task = __DSP_curr_task = NULL;
        }
    } else if (__DSP_last_task == task) {
        __DSP_last_task = (task->prev);
        task->prev->next = NULL;
        __DSP_curr_task = __DSP_first_task;

    } else {
        __DSP_curr_task = task->next;
        task->prev->next = task->next;
        task->next->prev = task->prev;
    }
}