
#include "global.h"
#include "SComponent/c_phase.h"

void cPhs_Reset(request_of_phase_process_class *pPhase)
{
    pPhase->mPhaseStep = 0;
}

void cPhs_Set(request_of_phase_process_class *pPhase, cPhs__Handler *pHandlerTable)
{
    pPhase->mpHandlerTable = pHandlerTable;
    pPhase->mPhaseStep = 0;
}

void cPhs_UnCompleate(request_of_phase_process_class *pPhase)
{
    pPhase->mpHandlerTable = NULL;
    cPhs_Reset(pPhase);
}

int cPhs_Compleate(request_of_phase_process_class *pPhase)
{
    pPhase->mpHandlerTable = NULL;
    return cPhs_COMPLEATE_e;
}

#if NON_MATCHING
int cPhs_Next(request_of_phase_process_class *pPhase)
{
    // flow control

    if (pPhase->mpHandlerTable != NULL) {
        pPhase->mPhaseStep++;
        cPhs__Handler pHandler = pPhase->mpHandlerTable[pPhase->mPhaseStep];
        if (pHandler == NULL)
            return cPhs_Compleate(pPhase);
        else if (pHandler != NULL)
            return 1;
    }

    return cPhs_COMPLEATE_e;
}
#else
asm int cPhs_Next(request_of_phase_process_class *pPhase)
{
    nofralloc
    /* 80266678 002635B8  94 21 FF F0 */	stwu r1, -0x10(r1)
    /* 8026667C 002635BC  7C 08 02 A6 */	mflr r0
    /* 80266680 002635C0  90 01 00 14 */	stw r0, 0x14(r1)
    /* 80266684 002635C4  80 A3 00 00 */	lwz r5, 0(r3)
    /* 80266688 002635C8  28 05 00 00 */	cmplwi r5, 0
    /* 8026668C 002635CC  41 82 00 38 */	beq lbl_802666C4
    /* 80266690 002635D0  80 83 00 04 */	lwz r4, 4(r3)
    /* 80266694 002635D4  38 04 00 01 */	addi r0, r4, 1
    /* 80266698 002635D8  90 03 00 04 */	stw r0, 4(r3)
    /* 8026669C 002635DC  80 03 00 04 */	lwz r0, 4(r3)
    /* 802666A0 002635E0  54 00 10 3A */	slwi r0, r0, 2
    /* 802666A4 002635E4  7C 05 00 2E */	lwzx r0, r5, r0
    /* 802666A8 002635E8  28 00 00 00 */	cmplwi r0, 0
    /* 802666AC 002635EC  41 82 00 08 */	beq lbl_802666B4
    /* 802666B0 002635F0  40 82 00 0C */	bne lbl_802666BC
    lbl_802666B4:
    /* 802666B4 002635F4  4B FF FF B5 */	bl cPhs_Compleate
    /* 802666B8 002635F8  48 00 00 10 */	b lbl_802666C8
    lbl_802666BC:
    /* 802666BC 002635FC  38 60 00 01 */	li r3, 1
    /* 802666C0 00263600  48 00 00 08 */	b lbl_802666C8
    lbl_802666C4:
    /* 802666C4 00263604  38 60 00 04 */	li r3, 4
    lbl_802666C8:
    /* 802666C8 00263608  80 01 00 14 */	lwz r0, 0x14(r1)
    /* 802666CC 0026360C  7C 08 03 A6 */	mtlr r0
    /* 802666D0 00263610  38 21 00 10 */	addi r1, r1, 0x10
    /* 802666D4 00263614  4E 80 00 20 */	blr
}
#endif

#if NON_MATCHING
int cPhs_Do(request_of_phase_process_class *pPhase, void *pUserData)
{
    if (pPhase->mpHandlerTable != NULL) {
        int newStep = (*pPhase->mpHandlerTable[pPhase->mPhaseStep])(pUserData);
        switch (newStep) {
        case 1:
            return cPhs_Next(pPhase);
        case 2: {
            int step2 = cPhs_Next(pPhase);
            return step2 == 1 ? 2 : cPhs_COMPLEATE_e;
        }
        case 3: {
            cPhs_UnCompleate(pPhase);
            return 3;
        }
        case cPhs_COMPLEATE_e:
            return cPhs_Compleate(pPhase);
        case cPhs_ERROR_e:
            cPhs_UnCompleate(pPhase);
            return cPhs_ERROR_e;
        }

        return newStep;
    } else {
        return cPhs_Compleate(pPhase);
    }
}
#else
asm int cPhs_Do(request_of_phase_process_class *pPhase, void *pUserData)
{
    nofralloc
    /* 802666D8 00263618  94 21 FF F0 */	stwu r1, -0x10(r1)
    /* 802666DC 0026361C  7C 08 02 A6 */	mflr r0
    /* 802666E0 00263620  90 01 00 14 */	stw r0, 0x14(r1)
    /* 802666E4 00263624  93 E1 00 0C */	stw r31, 0xc(r1)
    /* 802666E8 00263628  7C 7F 1B 78 */	mr r31, r3
    /* 802666EC 0026362C  80 A3 00 00 */	lwz r5, 0(r3)
    /* 802666F0 00263630  28 05 00 00 */	cmplwi r5, 0
    /* 802666F4 00263634  41 82 00 A0 */	beq lbl_80266794
    /* 802666F8 00263638  80 1F 00 04 */	lwz r0, 4(r31)
    /* 802666FC 0026363C  54 00 10 3A */	slwi r0, r0, 2
    /* 80266700 00263640  7C 83 23 78 */	mr r3, r4
    /* 80266704 00263644  7D 85 00 2E */	lwzx r12, r5, r0
    /* 80266708 00263648  7D 89 03 A6 */	mtctr r12
    /* 8026670C 0026364C  4E 80 04 21 */	bctrl 
    /* 80266710 00263650  2C 03 00 03 */	cmpwi r3, 3
    /* 80266714 00263654  41 82 00 5C */	beq lbl_80266770
    /* 80266718 00263658  40 80 00 14 */	bge lbl_8026672C
    /* 8026671C 0026365C  2C 03 00 01 */	cmpwi r3, 1
    /* 80266720 00263660  41 82 00 1C */	beq lbl_8026673C
    /* 80266724 00263664  40 80 00 24 */	bge lbl_80266748
    /* 80266728 00263668  48 00 00 70 */	b lbl_80266798
    lbl_8026672C:
    /* 8026672C 0026366C  2C 03 00 05 */	cmpwi r3, 5
    /* 80266730 00263670  41 82 00 50 */	beq lbl_80266780
    /* 80266734 00263674  40 80 00 64 */	bge lbl_80266798
    /* 80266738 00263678  48 00 00 2C */	b lbl_80266764
    lbl_8026673C:
    /* 8026673C 0026367C  7F E3 FB 78 */	mr r3, r31
    /* 80266740 00263680  4B FF FF 39 */	bl cPhs_Next
    /* 80266744 00263684  48 00 00 54 */	b lbl_80266798
    lbl_80266748:
    /* 80266748 00263688  7F E3 FB 78 */	mr r3, r31
    /* 8026674C 0026368C  4B FF FF 2D */	bl cPhs_Next
    /* 80266750 00263690  2C 03 00 01 */	cmpwi r3, 1
    /* 80266754 00263694  38 60 00 04 */	li r3, 4
    /* 80266758 00263698  40 82 00 40 */	bne lbl_80266798
    /* 8026675C 0026369C  38 60 00 02 */	li r3, 2
    /* 80266760 002636A0  48 00 00 38 */	b lbl_80266798
    lbl_80266764:
    /* 80266764 002636A4  7F E3 FB 78 */	mr r3, r31
    /* 80266768 002636A8  4B FF FF 01 */	bl cPhs_Compleate
    /* 8026676C 002636AC  48 00 00 2C */	b lbl_80266798
    lbl_80266770:
    /* 80266770 002636B0  7F E3 FB 78 */	mr r3, r31
    /* 80266774 002636B4  4B FF FE CD */	bl cPhs_UnCompleate
    /* 80266778 002636B8  38 60 00 03 */	li r3, 3
    /* 8026677C 002636BC  48 00 00 1C */	b lbl_80266798
    lbl_80266780:
    /* 80266780 002636C0  7F E3 FB 78 */	mr r3, r31
    /* 80266784 002636C4  4B FF FE BD */	bl cPhs_UnCompleate
    /* 80266788 002636C8  38 60 00 05 */	li r3, 5
    /* 8026678C 002636CC  48 00 00 0C */	b lbl_80266798
    /* 80266790 002636D0  48 00 00 08 */	b lbl_80266798
    lbl_80266794:
    /* 80266794 002636D4  4B FF FE D5 */	bl cPhs_Compleate
    lbl_80266798:
    /* 80266798 002636D8  83 E1 00 0C */	lwz r31, 0xc(r1)
    /* 8026679C 002636DC  80 01 00 14 */	lwz r0, 0x14(r1)
    /* 802667A0 002636E0  7C 08 03 A6 */	mtlr r0
    /* 802667A4 002636E4  38 21 00 10 */	addi r1, r1, 0x10
    /* 802667A8 002636E8  4E 80 00 20 */	blr 
}
#endif

int cPhs_Handler(request_of_phase_process_class *pPhase, cPhs__Handler *pHandlerTable, void *pUserData)
{
    pPhase->mpHandlerTable = pHandlerTable;
    return cPhs_Do(pPhase, pUserData);
}
