lbl_80AC1110:
/* 80AC1110  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AC1114  7C 08 02 A6 */	mflr r0
/* 80AC1118  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AC111C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AC1120  93 C1 00 08 */	stw r30, 8(r1)
/* 80AC1124  7C 7E 1B 78 */	mr r30, r3
/* 80AC1128  80 03 0B 58 */	lwz r0, 0xb58(r3)
/* 80AC112C  2C 00 00 00 */	cmpwi r0, 0
/* 80AC1130  41 82 00 28 */	beq lbl_80AC1158
/* 80AC1134  83 FE 0B 5C */	lwz r31, 0xb5c(r30)
/* 80AC1138  38 7E 0B 50 */	addi r3, r30, 0xb50
/* 80AC113C  4B 68 47 5C */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80AC1140  93 FE 0B 5C */	stw r31, 0xb5c(r30)
/* 80AC1144  38 00 00 00 */	li r0, 0
/* 80AC1148  90 1E 0B 58 */	stw r0, 0xb58(r30)
/* 80AC114C  3C 60 80 AC */	lis r3, lit_4608@ha
/* 80AC1150  C0 03 45 CC */	lfs f0, lit_4608@l(r3)
/* 80AC1154  D0 1E 0B 68 */	stfs f0, 0xb68(r30)
lbl_80AC1158:
/* 80AC1158  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AC115C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80AC1160  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AC1164  7C 08 03 A6 */	mtlr r0
/* 80AC1168  38 21 00 10 */	addi r1, r1, 0x10
/* 80AC116C  4E 80 00 20 */	blr 
