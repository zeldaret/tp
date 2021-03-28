lbl_807B774C:
/* 807B774C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807B7750  7C 08 02 A6 */	mflr r0
/* 807B7754  90 01 00 14 */	stw r0, 0x14(r1)
/* 807B7758  93 E1 00 0C */	stw r31, 0xc(r1)
/* 807B775C  7C 7F 1B 78 */	mr r31, r3
/* 807B7760  38 7F 05 AC */	addi r3, r31, 0x5ac
/* 807B7764  3C 80 80 7B */	lis r4, stringBase0@ha
/* 807B7768  38 84 7F C0 */	addi r4, r4, stringBase0@l
/* 807B776C  38 84 00 05 */	addi r4, r4, 5
/* 807B7770  4B 87 58 98 */	b dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 807B7774  80 1F 00 F0 */	lwz r0, 0xf0(r31)
/* 807B7778  28 00 00 00 */	cmplwi r0, 0
/* 807B777C  41 82 00 18 */	beq lbl_807B7794
/* 807B7780  38 7F 05 BC */	addi r3, r31, 0x5bc
/* 807B7784  81 9F 05 BC */	lwz r12, 0x5bc(r31)
/* 807B7788  81 8C 00 08 */	lwz r12, 8(r12)
/* 807B778C  7D 89 03 A6 */	mtctr r12
/* 807B7790  4E 80 04 21 */	bctrl 
lbl_807B7794:
/* 807B7794  38 60 00 01 */	li r3, 1
/* 807B7798  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 807B779C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807B77A0  7C 08 03 A6 */	mtlr r0
/* 807B77A4  38 21 00 10 */	addi r1, r1, 0x10
/* 807B77A8  4E 80 00 20 */	blr 
