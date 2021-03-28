lbl_80CE8C08:
/* 80CE8C08  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CE8C0C  7C 08 02 A6 */	mflr r0
/* 80CE8C10  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CE8C14  3C 80 80 CF */	lis r4, stringBase0@ha
/* 80CE8C18  38 84 8E CC */	addi r4, r4, stringBase0@l
/* 80CE8C1C  38 63 05 6C */	addi r3, r3, 0x56c
/* 80CE8C20  4B 34 43 E8 */	b dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80CE8C24  38 60 00 01 */	li r3, 1
/* 80CE8C28  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CE8C2C  7C 08 03 A6 */	mtlr r0
/* 80CE8C30  38 21 00 10 */	addi r1, r1, 0x10
/* 80CE8C34  4E 80 00 20 */	blr 
