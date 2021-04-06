lbl_800782B8:
/* 800782B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800782BC  7C 08 02 A6 */	mflr r0
/* 800782C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 800782C4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800782C8  7C 7F 1B 78 */	mr r31, r3
/* 800782CC  4B FF F9 9D */	bl __ct__11dBgS_LinChkFv
/* 800782D0  3C 60 80 3B */	lis r3, __vt__20dBgS_BoomerangLinChk@ha /* 0x803AB820@ha */
/* 800782D4  38 63 B8 20 */	addi r3, r3, __vt__20dBgS_BoomerangLinChk@l /* 0x803AB820@l */
/* 800782D8  90 7F 00 10 */	stw r3, 0x10(r31)
/* 800782DC  38 03 00 0C */	addi r0, r3, 0xc
/* 800782E0  90 1F 00 20 */	stw r0, 0x20(r31)
/* 800782E4  38 03 00 18 */	addi r0, r3, 0x18
/* 800782E8  90 1F 00 58 */	stw r0, 0x58(r31)
/* 800782EC  38 03 00 24 */	addi r0, r3, 0x24
/* 800782F0  90 1F 00 68 */	stw r0, 0x68(r31)
/* 800782F4  38 7F 00 58 */	addi r3, r31, 0x58
/* 800782F8  48 00 0B DD */	bl SetBoomerang__16dBgS_PolyPassChkFv
/* 800782FC  7F E3 FB 78 */	mr r3, r31
/* 80078300  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80078304  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80078308  7C 08 03 A6 */	mtlr r0
/* 8007830C  38 21 00 10 */	addi r1, r1, 0x10
/* 80078310  4E 80 00 20 */	blr 
