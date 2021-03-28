lbl_80BED9C4:
/* 80BED9C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BED9C8  7C 08 02 A6 */	mflr r0
/* 80BED9CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BED9D0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BED9D4  93 C1 00 08 */	stw r30, 8(r1)
/* 80BED9D8  7C 7E 1B 79 */	or. r30, r3, r3
/* 80BED9DC  7C 9F 23 78 */	mr r31, r4
/* 80BED9E0  41 82 01 74 */	beq lbl_80BEDB54
/* 80BED9E4  3C 60 80 BF */	lis r3, __vt__11FlagCloth_c@ha
/* 80BED9E8  38 03 E9 E8 */	addi r0, r3, __vt__11FlagCloth_c@l
/* 80BED9EC  90 1E 00 00 */	stw r0, 0(r30)
/* 80BED9F0  38 7E 08 3C */	addi r3, r30, 0x83c
/* 80BED9F4  3C 80 80 BF */	lis r4, __dt__4cXyzFv@ha
/* 80BED9F8  38 84 C7 90 */	addi r4, r4, __dt__4cXyzFv@l
/* 80BED9FC  38 A0 00 0C */	li r5, 0xc
/* 80BEDA00  38 C0 00 15 */	li r6, 0x15
/* 80BEDA04  4B 77 42 E4 */	b __destroy_arr
/* 80BEDA08  38 7E 07 40 */	addi r3, r30, 0x740
/* 80BEDA0C  3C 80 80 BF */	lis r4, __dt__4cXyzFv@ha
/* 80BEDA10  38 84 C7 90 */	addi r4, r4, __dt__4cXyzFv@l
/* 80BEDA14  38 A0 00 0C */	li r5, 0xc
/* 80BEDA18  38 C0 00 15 */	li r6, 0x15
/* 80BEDA1C  4B 77 42 CC */	b __destroy_arr
/* 80BEDA20  38 7E 06 40 */	addi r3, r30, 0x640
/* 80BEDA24  3C 80 80 BF */	lis r4, __dt__4cXyzFv@ha
/* 80BEDA28  38 84 C7 90 */	addi r4, r4, __dt__4cXyzFv@l
/* 80BEDA2C  38 A0 00 0C */	li r5, 0xc
/* 80BEDA30  38 C0 00 15 */	li r6, 0x15
/* 80BEDA34  4B 77 42 B4 */	b __destroy_arr
/* 80BEDA38  38 7E 05 40 */	addi r3, r30, 0x540
/* 80BEDA3C  3C 80 80 BF */	lis r4, __dt__4cXyzFv@ha
/* 80BEDA40  38 84 C7 90 */	addi r4, r4, __dt__4cXyzFv@l
/* 80BEDA44  38 A0 00 0C */	li r5, 0xc
/* 80BEDA48  38 C0 00 15 */	li r6, 0x15
/* 80BEDA4C  4B 77 42 9C */	b __destroy_arr
/* 80BEDA50  34 1E 03 F4 */	addic. r0, r30, 0x3f4
/* 80BEDA54  41 82 00 84 */	beq lbl_80BEDAD8
/* 80BEDA58  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha
/* 80BEDA5C  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l
/* 80BEDA60  90 7E 04 30 */	stw r3, 0x430(r30)
/* 80BEDA64  38 03 00 2C */	addi r0, r3, 0x2c
/* 80BEDA68  90 1E 05 14 */	stw r0, 0x514(r30)
/* 80BEDA6C  38 03 00 84 */	addi r0, r3, 0x84
/* 80BEDA70  90 1E 05 28 */	stw r0, 0x528(r30)
/* 80BEDA74  34 1E 04 F8 */	addic. r0, r30, 0x4f8
/* 80BEDA78  41 82 00 54 */	beq lbl_80BEDACC
/* 80BEDA7C  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha
/* 80BEDA80  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l
/* 80BEDA84  90 7E 05 14 */	stw r3, 0x514(r30)
/* 80BEDA88  38 03 00 58 */	addi r0, r3, 0x58
/* 80BEDA8C  90 1E 05 28 */	stw r0, 0x528(r30)
/* 80BEDA90  34 1E 05 18 */	addic. r0, r30, 0x518
/* 80BEDA94  41 82 00 10 */	beq lbl_80BEDAA4
/* 80BEDA98  3C 60 80 BF */	lis r3, __vt__8cM3dGSph@ha
/* 80BEDA9C  38 03 E9 C4 */	addi r0, r3, __vt__8cM3dGSph@l
/* 80BEDAA0  90 1E 05 28 */	stw r0, 0x528(r30)
lbl_80BEDAA4:
/* 80BEDAA4  34 1E 04 F8 */	addic. r0, r30, 0x4f8
/* 80BEDAA8  41 82 00 24 */	beq lbl_80BEDACC
/* 80BEDAAC  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 80BEDAB0  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 80BEDAB4  90 1E 05 14 */	stw r0, 0x514(r30)
/* 80BEDAB8  34 1E 04 F8 */	addic. r0, r30, 0x4f8
/* 80BEDABC  41 82 00 10 */	beq lbl_80BEDACC
/* 80BEDAC0  3C 60 80 BF */	lis r3, __vt__8cM3dGAab@ha
/* 80BEDAC4  38 03 E9 DC */	addi r0, r3, __vt__8cM3dGAab@l
/* 80BEDAC8  90 1E 05 10 */	stw r0, 0x510(r30)
lbl_80BEDACC:
/* 80BEDACC  38 7E 03 F4 */	addi r3, r30, 0x3f4
/* 80BEDAD0  38 80 00 00 */	li r4, 0
/* 80BEDAD4  4B 49 66 10 */	b __dt__12dCcD_GObjInfFv
lbl_80BEDAD8:
/* 80BEDAD8  34 1E 03 B8 */	addic. r0, r30, 0x3b8
/* 80BEDADC  41 82 00 54 */	beq lbl_80BEDB30
/* 80BEDAE0  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 80BEDAE4  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 80BEDAE8  90 7E 03 D0 */	stw r3, 0x3d0(r30)
/* 80BEDAEC  38 03 00 20 */	addi r0, r3, 0x20
/* 80BEDAF0  90 1E 03 D4 */	stw r0, 0x3d4(r30)
/* 80BEDAF4  34 1E 03 D4 */	addic. r0, r30, 0x3d4
/* 80BEDAF8  41 82 00 24 */	beq lbl_80BEDB1C
/* 80BEDAFC  3C 60 80 BF */	lis r3, __vt__10dCcD_GStts@ha
/* 80BEDB00  38 03 E9 B8 */	addi r0, r3, __vt__10dCcD_GStts@l
/* 80BEDB04  90 1E 03 D4 */	stw r0, 0x3d4(r30)
/* 80BEDB08  34 1E 03 D4 */	addic. r0, r30, 0x3d4
/* 80BEDB0C  41 82 00 10 */	beq lbl_80BEDB1C
/* 80BEDB10  3C 60 80 BF */	lis r3, __vt__10cCcD_GStts@ha
/* 80BEDB14  38 03 E9 AC */	addi r0, r3, __vt__10cCcD_GStts@l
/* 80BEDB18  90 1E 03 D4 */	stw r0, 0x3d4(r30)
lbl_80BEDB1C:
/* 80BEDB1C  34 1E 03 B8 */	addic. r0, r30, 0x3b8
/* 80BEDB20  41 82 00 10 */	beq lbl_80BEDB30
/* 80BEDB24  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 80BEDB28  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 80BEDB2C  90 1E 03 D0 */	stw r0, 0x3d0(r30)
lbl_80BEDB30:
/* 80BEDB30  28 1E 00 00 */	cmplwi r30, 0
/* 80BEDB34  41 82 00 10 */	beq lbl_80BEDB44
/* 80BEDB38  3C 60 80 3D */	lis r3, __vt__9J3DPacket@ha
/* 80BEDB3C  38 03 D9 7C */	addi r0, r3, __vt__9J3DPacket@l
/* 80BEDB40  90 1E 00 00 */	stw r0, 0(r30)
lbl_80BEDB44:
/* 80BEDB44  7F E0 07 35 */	extsh. r0, r31
/* 80BEDB48  40 81 00 0C */	ble lbl_80BEDB54
/* 80BEDB4C  7F C3 F3 78 */	mr r3, r30
/* 80BEDB50  4B 6E 11 EC */	b __dl__FPv
lbl_80BEDB54:
/* 80BEDB54  7F C3 F3 78 */	mr r3, r30
/* 80BEDB58  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BEDB5C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80BEDB60  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BEDB64  7C 08 03 A6 */	mtlr r0
/* 80BEDB68  38 21 00 10 */	addi r1, r1, 0x10
/* 80BEDB6C  4E 80 00 20 */	blr 
