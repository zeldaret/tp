lbl_80B30BEC:
/* 80B30BEC  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80B30BF0  7C 08 02 A6 */	mflr r0
/* 80B30BF4  90 01 00 44 */	stw r0, 0x44(r1)
/* 80B30BF8  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 80B30BFC  93 C1 00 38 */	stw r30, 0x38(r1)
/* 80B30C00  7C 7E 1B 78 */	mr r30, r3
/* 80B30C04  88 03 0E 02 */	lbz r0, 0xe02(r3)
/* 80B30C08  28 00 00 00 */	cmplwi r0, 0
/* 80B30C0C  40 82 00 80 */	bne lbl_80B30C8C
/* 80B30C10  3C 60 80 B3 */	lis r3, s_sub1__FPvPv@ha /* 0x80B30B80@ha */
/* 80B30C14  38 63 0B 80 */	addi r3, r3, s_sub1__FPvPv@l /* 0x80B30B80@l */
/* 80B30C18  7F C4 F3 78 */	mr r4, r30
/* 80B30C1C  4B 4F 07 1D */	bl fpcEx_Search__FPFPvPv_PvPv
/* 80B30C20  28 03 00 00 */	cmplwi r3, 0
/* 80B30C24  41 82 00 68 */	beq lbl_80B30C8C
/* 80B30C28  7C 7F 1B 78 */	mr r31, r3
/* 80B30C2C  38 61 00 20 */	addi r3, r1, 0x20
/* 80B30C30  7F E4 FB 78 */	mr r4, r31
/* 80B30C34  48 01 09 E5 */	bl getArenaPos__12daTagArena_cFv
/* 80B30C38  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 80B30C3C  D0 1E 0D F0 */	stfs f0, 0xdf0(r30)
/* 80B30C40  38 61 00 14 */	addi r3, r1, 0x14
/* 80B30C44  7F E4 FB 78 */	mr r4, r31
/* 80B30C48  48 01 09 D1 */	bl getArenaPos__12daTagArena_cFv
/* 80B30C4C  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 80B30C50  D0 1E 0D F4 */	stfs f0, 0xdf4(r30)
/* 80B30C54  38 61 00 08 */	addi r3, r1, 8
/* 80B30C58  7F E4 FB 78 */	mr r4, r31
/* 80B30C5C  48 01 09 BD */	bl getArenaPos__12daTagArena_cFv
/* 80B30C60  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80B30C64  D0 1E 0D F8 */	stfs f0, 0xdf8(r30)
/* 80B30C68  3C 60 80 B4 */	lis r3, lit_4804@ha /* 0x80B418B8@ha */
/* 80B30C6C  C0 23 18 B8 */	lfs f1, lit_4804@l(r3)  /* 0x80B418B8@l */
/* 80B30C70  C0 1F 04 EC */	lfs f0, 0x4ec(r31)
/* 80B30C74  EC 01 00 32 */	fmuls f0, f1, f0
/* 80B30C78  D0 1E 0D FC */	stfs f0, 0xdfc(r30)
/* 80B30C7C  A8 1F 04 B6 */	lha r0, 0x4b6(r31)
/* 80B30C80  B0 1E 0E 00 */	sth r0, 0xe00(r30)
/* 80B30C84  38 00 00 01 */	li r0, 1
/* 80B30C88  98 1E 0E 02 */	stb r0, 0xe02(r30)
lbl_80B30C8C:
/* 80B30C8C  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 80B30C90  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 80B30C94  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80B30C98  7C 08 03 A6 */	mtlr r0
/* 80B30C9C  38 21 00 40 */	addi r1, r1, 0x40
/* 80B30CA0  4E 80 00 20 */	blr 
