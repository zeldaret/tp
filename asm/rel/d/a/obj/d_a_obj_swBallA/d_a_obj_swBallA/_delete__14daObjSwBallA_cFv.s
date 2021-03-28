lbl_80CF41F4:
/* 80CF41F4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CF41F8  7C 08 02 A6 */	mflr r0
/* 80CF41FC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CF4200  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CF4204  7C 7F 1B 78 */	mr r31, r3
/* 80CF4208  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CF420C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80CF4210  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80CF4214  54 04 C6 3E */	rlwinm r4, r0, 0x18, 0x18, 0x1f
/* 80CF4218  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80CF421C  7C 05 07 74 */	extsb r5, r0
/* 80CF4220  4B 34 11 40 */	b isSwitch__10dSv_info_cCFii
/* 80CF4224  2C 03 00 00 */	cmpwi r3, 0
/* 80CF4228  40 82 00 20 */	bne lbl_80CF4248
/* 80CF422C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CF4230  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80CF4234  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80CF4238  54 04 86 3E */	rlwinm r4, r0, 0x10, 0x18, 0x1f
/* 80CF423C  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80CF4240  7C 05 07 74 */	extsb r5, r0
/* 80CF4244  4B 34 10 6C */	b offSwitch__10dSv_info_cFii
lbl_80CF4248:
/* 80CF4248  38 7F 05 7C */	addi r3, r31, 0x57c
/* 80CF424C  3C 80 80 CF */	lis r4, l_arcName@ha
/* 80CF4250  38 84 44 38 */	addi r4, r4, l_arcName@l
/* 80CF4254  80 84 00 00 */	lwz r4, 0(r4)
/* 80CF4258  4B 33 8D B0 */	b dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80CF425C  38 60 00 01 */	li r3, 1
/* 80CF4260  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CF4264  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CF4268  7C 08 03 A6 */	mtlr r0
/* 80CF426C  38 21 00 10 */	addi r1, r1, 0x10
/* 80CF4270  4E 80 00 20 */	blr 
