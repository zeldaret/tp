lbl_80353BB4:
/* 80353BB4  7C 08 02 A6 */	mflr r0
/* 80353BB8  1C C3 01 10 */	mulli r6, r3, 0x110
/* 80353BBC  90 01 00 04 */	stw r0, 4(r1)
/* 80353BC0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80353BC4  3C A0 80 45 */	lis r5, __CARDBlock@ha /* 0x8044CBC0@ha */
/* 80353BC8  2C 03 00 00 */	cmpwi r3, 0
/* 80353BCC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80353BD0  38 05 CB C0 */	addi r0, r5, __CARDBlock@l /* 0x8044CBC0@l */
/* 80353BD4  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80353BD8  7F C0 32 14 */	add r30, r0, r6
/* 80353BDC  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80353BE0  3B A4 00 00 */	addi r29, r4, 0
/* 80353BE4  41 80 00 18 */	blt lbl_80353BFC
/* 80353BE8  2C 03 00 02 */	cmpwi r3, 2
/* 80353BEC  40 80 00 10 */	bge lbl_80353BFC
/* 80353BF0  80 1E 01 0C */	lwz r0, 0x10c(r30)
/* 80353BF4  28 00 00 00 */	cmplwi r0, 0
/* 80353BF8  40 82 00 0C */	bne lbl_80353C04
lbl_80353BFC:
/* 80353BFC  38 60 FF 80 */	li r3, -128
/* 80353C00  48 00 00 50 */	b lbl_80353C50
lbl_80353C04:
/* 80353C04  4B FE 9A F1 */	bl OSDisableInterrupts
/* 80353C08  80 1E 00 00 */	lwz r0, 0(r30)
/* 80353C0C  2C 00 00 00 */	cmpwi r0, 0
/* 80353C10  40 82 00 0C */	bne lbl_80353C1C
/* 80353C14  3B E0 FF FD */	li r31, -3
/* 80353C18  48 00 00 30 */	b lbl_80353C48
lbl_80353C1C:
/* 80353C1C  80 1E 00 04 */	lwz r0, 4(r30)
/* 80353C20  2C 00 FF FF */	cmpwi r0, -1
/* 80353C24  40 82 00 0C */	bne lbl_80353C30
/* 80353C28  3B E0 FF FF */	li r31, -1
/* 80353C2C  48 00 00 1C */	b lbl_80353C48
lbl_80353C30:
/* 80353C30  38 00 FF FF */	li r0, -1
/* 80353C34  90 1E 00 04 */	stw r0, 4(r30)
/* 80353C38  38 00 00 00 */	li r0, 0
/* 80353C3C  3B E0 00 00 */	li r31, 0
/* 80353C40  90 1E 00 D0 */	stw r0, 0xd0(r30)
/* 80353C44  93 DD 00 00 */	stw r30, 0(r29)
lbl_80353C48:
/* 80353C48  4B FE 9A D5 */	bl OSRestoreInterrupts
/* 80353C4C  7F E3 FB 78 */	mr r3, r31
lbl_80353C50:
/* 80353C50  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80353C54  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80353C58  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80353C5C  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80353C60  38 21 00 20 */	addi r1, r1, 0x20
/* 80353C64  7C 08 03 A6 */	mtlr r0
/* 80353C68  4E 80 00 20 */	blr 
