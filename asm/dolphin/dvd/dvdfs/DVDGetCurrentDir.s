lbl_80348C30:
/* 80348C30  7C 08 02 A6 */	mflr r0
/* 80348C34  90 01 00 04 */	stw r0, 4(r1)
/* 80348C38  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80348C3C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80348C40  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80348C44  3B C4 00 00 */	addi r30, r4, 0
/* 80348C48  38 BE 00 00 */	addi r5, r30, 0
/* 80348C4C  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80348C50  3B A3 00 00 */	addi r29, r3, 0
/* 80348C54  38 9D 00 00 */	addi r4, r29, 0
/* 80348C58  83 ED 91 E8 */	lwz r31, currentDirectory(r13)
/* 80348C5C  38 7F 00 00 */	addi r3, r31, 0
/* 80348C60  4B FF FD 1D */	bl entryToPath
/* 80348C64  7C 03 F0 40 */	cmplw r3, r30
/* 80348C68  40 82 00 14 */	bne lbl_80348C7C
/* 80348C6C  38 00 00 00 */	li r0, 0
/* 80348C70  7C 7D F2 14 */	add r3, r29, r30
/* 80348C74  98 03 FF FF */	stb r0, -1(r3)
/* 80348C78  48 00 00 5C */	b lbl_80348CD4
lbl_80348C7C:
/* 80348C7C  1C 1F 00 0C */	mulli r0, r31, 0xc
/* 80348C80  80 8D 91 DC */	lwz r4, FstStart(r13)
/* 80348C84  7C 04 00 2E */	lwzx r0, r4, r0
/* 80348C88  54 00 00 0F */	rlwinm. r0, r0, 0, 0, 7
/* 80348C8C  40 82 00 0C */	bne lbl_80348C98
/* 80348C90  38 00 00 00 */	li r0, 0
/* 80348C94  48 00 00 08 */	b lbl_80348C9C
lbl_80348C98:
/* 80348C98  38 00 00 01 */	li r0, 1
lbl_80348C9C:
/* 80348C9C  2C 00 00 00 */	cmpwi r0, 0
/* 80348CA0  41 82 00 28 */	beq lbl_80348CC8
/* 80348CA4  38 1E FF FF */	addi r0, r30, -1
/* 80348CA8  7C 03 00 40 */	cmplw r3, r0
/* 80348CAC  40 82 00 10 */	bne lbl_80348CBC
/* 80348CB0  38 00 00 00 */	li r0, 0
/* 80348CB4  7C 1D 19 AE */	stbx r0, r29, r3
/* 80348CB8  48 00 00 1C */	b lbl_80348CD4
lbl_80348CBC:
/* 80348CBC  38 00 00 2F */	li r0, 0x2f
/* 80348CC0  7C 1D 19 AE */	stbx r0, r29, r3
/* 80348CC4  38 63 00 01 */	addi r3, r3, 1
lbl_80348CC8:
/* 80348CC8  38 00 00 00 */	li r0, 0
/* 80348CCC  7C 1D 19 AE */	stbx r0, r29, r3
/* 80348CD0  38 00 00 01 */	li r0, 1
lbl_80348CD4:
/* 80348CD4  7C 03 03 78 */	mr r3, r0
/* 80348CD8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80348CDC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80348CE0  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80348CE4  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80348CE8  38 21 00 20 */	addi r1, r1, 0x20
/* 80348CEC  7C 08 03 A6 */	mtlr r0
/* 80348CF0  4E 80 00 20 */	blr 
