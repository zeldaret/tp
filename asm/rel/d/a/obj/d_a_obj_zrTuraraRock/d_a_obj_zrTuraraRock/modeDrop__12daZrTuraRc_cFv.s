lbl_80D42084:
/* 80D42084  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80D42088  7C 08 02 A6 */	mflr r0
/* 80D4208C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80D42090  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80D42094  7C 7F 1B 78 */	mr r31, r3
/* 80D42098  38 9F 05 68 */	addi r4, r31, 0x568
/* 80D4209C  4B 2D 86 31 */	bl fopAcM_posMoveF__FP10fopAc_ac_cPC4cXyz
/* 80D420A0  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080250@ha */
/* 80D420A4  38 03 02 50 */	addi r0, r3, 0x0250 /* 0x00080250@l */
/* 80D420A8  90 01 00 08 */	stw r0, 8(r1)
/* 80D420AC  38 7F 09 18 */	addi r3, r31, 0x918
/* 80D420B0  38 81 00 08 */	addi r4, r1, 8
/* 80D420B4  38 A0 00 00 */	li r5, 0
/* 80D420B8  38 C0 FF FF */	li r6, -1
/* 80D420BC  81 9F 09 28 */	lwz r12, 0x928(r31)
/* 80D420C0  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80D420C4  7D 89 03 A6 */	mtctr r12
/* 80D420C8  4E 80 04 21 */	bctrl 
/* 80D420CC  38 7F 07 40 */	addi r3, r31, 0x740
/* 80D420D0  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D420D4  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D420D8  38 84 0F 38 */	addi r4, r4, 0xf38
/* 80D420DC  4B 33 49 D1 */	bl CrrPos__9dBgS_AcchFR4dBgS
/* 80D420E0  7F E3 FB 78 */	mr r3, r31
/* 80D420E4  48 00 00 19 */	bl bgCheck__12daZrTuraRc_cFv
/* 80D420E8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80D420EC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80D420F0  7C 08 03 A6 */	mtlr r0
/* 80D420F4  38 21 00 20 */	addi r1, r1, 0x20
/* 80D420F8  4E 80 00 20 */	blr 
