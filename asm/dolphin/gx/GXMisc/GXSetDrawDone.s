lbl_8035C25C:
/* 8035C25C  7C 08 02 A6 */	mflr r0
/* 8035C260  90 01 00 04 */	stw r0, 4(r1)
/* 8035C264  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 8035C268  93 E1 00 14 */	stw r31, 0x14(r1)
/* 8035C26C  93 C1 00 10 */	stw r30, 0x10(r1)
/* 8035C270  4B FE 14 85 */	bl OSDisableInterrupts
/* 8035C274  38 00 00 61 */	li r0, 0x61
/* 8035C278  80 82 CB 80 */	lwz r4, __GXData(r2)
/* 8035C27C  3C C0 CC 01 */	lis r6, 0xCC01 /* 0xCC008000@ha */
/* 8035C280  3C A0 45 00 */	lis r5, 0x4500 /* 0x45000002@ha */
/* 8035C284  98 06 80 00 */	stb r0, 0x8000(r6)  /* 0xCC008000@l */
/* 8035C288  38 05 00 02 */	addi r0, r5, 0x0002 /* 0x45000002@l */
/* 8035C28C  90 06 80 00 */	stw r0, -0x8000(r6)
/* 8035C290  7C 7E 1B 78 */	mr r30, r3
/* 8035C294  80 04 05 AC */	lwz r0, 0x5ac(r4)
/* 8035C298  28 00 00 00 */	cmplwi r0, 0
/* 8035C29C  41 82 00 08 */	beq lbl_8035C2A4
/* 8035C2A0  48 00 04 45 */	bl __GXSetDirtyState
lbl_8035C2A4:
/* 8035C2A4  3B E0 00 00 */	li r31, 0
/* 8035C2A8  3C 60 CC 01 */	lis r3, 0xCC01 /* 0xCC008000@ha */
/* 8035C2AC  93 E3 80 00 */	stw r31, 0x8000(r3)  /* 0xCC008000@l */
/* 8035C2B0  93 E3 80 00 */	stw r31, -0x8000(r3)
/* 8035C2B4  93 E3 80 00 */	stw r31, -0x8000(r3)
/* 8035C2B8  93 E3 80 00 */	stw r31, -0x8000(r3)
/* 8035C2BC  93 E3 80 00 */	stw r31, -0x8000(r3)
/* 8035C2C0  93 E3 80 00 */	stw r31, -0x8000(r3)
/* 8035C2C4  93 E3 80 00 */	stw r31, -0x8000(r3)
/* 8035C2C8  93 E3 80 00 */	stw r31, -0x8000(r3)
/* 8035C2CC  4B FD DA 2D */	bl PPCSync
/* 8035C2D0  9B ED 93 F0 */	stb r31, data_80451970(r13)
/* 8035C2D4  7F C3 F3 78 */	mr r3, r30
/* 8035C2D8  4B FE 14 45 */	bl OSRestoreInterrupts
/* 8035C2DC  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8035C2E0  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 8035C2E4  83 C1 00 10 */	lwz r30, 0x10(r1)
/* 8035C2E8  38 21 00 18 */	addi r1, r1, 0x18
/* 8035C2EC  7C 08 03 A6 */	mtlr r0
/* 8035C2F0  4E 80 00 20 */	blr 
