lbl_8007749C:
/* 8007749C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800774A0  7C 08 02 A6 */	mflr r0
/* 800774A4  90 01 00 14 */	stw r0, 0x14(r1)
/* 800774A8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800774AC  7C 7F 1B 78 */	mr r31, r3
/* 800774B0  48 00 18 B5 */	bl __ct__16dBgS_PolyPassChkFv
/* 800774B4  38 7F 00 10 */	addi r3, r31, 0x10
/* 800774B8  48 00 06 E9 */	bl __ct__15dBgS_GrpPassChkFv
/* 800774BC  3C 60 80 3B */	lis r3, __vt__8dBgS_Chk@ha /* 0x803AB670@ha */
/* 800774C0  38 63 B6 70 */	addi r3, r3, __vt__8dBgS_Chk@l /* 0x803AB670@l */
/* 800774C4  90 7F 00 00 */	stw r3, 0(r31)
/* 800774C8  38 03 00 0C */	addi r0, r3, 0xc
/* 800774CC  90 1F 00 10 */	stw r0, 0x10(r31)
/* 800774D0  7F E3 FB 78 */	mr r3, r31
/* 800774D4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800774D8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800774DC  7C 08 03 A6 */	mtlr r0
/* 800774E0  38 21 00 10 */	addi r1, r1, 0x10
/* 800774E4  4E 80 00 20 */	blr 
