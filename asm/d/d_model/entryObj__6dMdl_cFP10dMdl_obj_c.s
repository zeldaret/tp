lbl_8009C668:
/* 8009C668  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8009C66C  7C 08 02 A6 */	mflr r0
/* 8009C670  90 01 00 14 */	stw r0, 0x14(r1)
/* 8009C674  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8009C678  93 C1 00 08 */	stw r30, 8(r1)
/* 8009C67C  7C 7E 1B 78 */	mr r30, r3
/* 8009C680  7C 9F 23 78 */	mr r31, r4
/* 8009C684  88 03 00 1A */	lbz r0, 0x1a(r3)
/* 8009C688  28 00 00 00 */	cmplwi r0, 0
/* 8009C68C  40 82 00 2C */	bne lbl_8009C6B8
/* 8009C690  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8009C694  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8009C698  80 63 5F 90 */	lwz r3, 0x5f90(r3)
/* 8009C69C  7F C4 F3 78 */	mr r4, r30
/* 8009C6A0  38 A0 00 00 */	li r5, 0
/* 8009C6A4  48 28 8D E9 */	bl entryImm__13J3DDrawBufferFP9J3DPacketUs
/* 8009C6A8  38 00 00 01 */	li r0, 1
/* 8009C6AC  98 1E 00 1A */	stb r0, 0x1a(r30)
/* 8009C6B0  38 00 00 00 */	li r0, 0
/* 8009C6B4  90 1E 00 1C */	stw r0, 0x1c(r30)
lbl_8009C6B8:
/* 8009C6B8  80 1E 00 1C */	lwz r0, 0x1c(r30)
/* 8009C6BC  90 1F 00 30 */	stw r0, 0x30(r31)
/* 8009C6C0  93 FE 00 1C */	stw r31, 0x1c(r30)
/* 8009C6C4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8009C6C8  83 C1 00 08 */	lwz r30, 8(r1)
/* 8009C6CC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8009C6D0  7C 08 03 A6 */	mtlr r0
/* 8009C6D4  38 21 00 10 */	addi r1, r1, 0x10
/* 8009C6D8  4E 80 00 20 */	blr 
