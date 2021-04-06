lbl_8094AA20:
/* 8094AA20  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8094AA24  7C 08 02 A6 */	mflr r0
/* 8094AA28  90 01 00 14 */	stw r0, 0x14(r1)
/* 8094AA2C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8094AA30  93 C1 00 08 */	stw r30, 8(r1)
/* 8094AA34  7C 7E 1B 79 */	or. r30, r3, r3
/* 8094AA38  7C 9F 23 78 */	mr r31, r4
/* 8094AA3C  41 82 01 54 */	beq lbl_8094AB90
/* 8094AA40  3C 60 80 95 */	lis r3, __vt__8daMyna_c@ha /* 0x8094B9C0@ha */
/* 8094AA44  38 03 B9 C0 */	addi r0, r3, __vt__8daMyna_c@l /* 0x8094B9C0@l */
/* 8094AA48  90 1E 05 68 */	stw r0, 0x568(r30)
/* 8094AA4C  34 1E 06 E4 */	addic. r0, r30, 0x6e4
/* 8094AA50  41 82 00 84 */	beq lbl_8094AAD4
/* 8094AA54  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha /* 0x803ABFC0@ha */
/* 8094AA58  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l /* 0x803ABFC0@l */
/* 8094AA5C  90 7E 07 20 */	stw r3, 0x720(r30)
/* 8094AA60  38 03 00 2C */	addi r0, r3, 0x2c
/* 8094AA64  90 1E 08 04 */	stw r0, 0x804(r30)
/* 8094AA68  38 03 00 84 */	addi r0, r3, 0x84
/* 8094AA6C  90 1E 08 18 */	stw r0, 0x818(r30)
/* 8094AA70  34 1E 07 E8 */	addic. r0, r30, 0x7e8
/* 8094AA74  41 82 00 54 */	beq lbl_8094AAC8
/* 8094AA78  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha /* 0x803C3540@ha */
/* 8094AA7C  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l /* 0x803C3540@l */
/* 8094AA80  90 7E 08 04 */	stw r3, 0x804(r30)
/* 8094AA84  38 03 00 58 */	addi r0, r3, 0x58
/* 8094AA88  90 1E 08 18 */	stw r0, 0x818(r30)
/* 8094AA8C  34 1E 08 08 */	addic. r0, r30, 0x808
/* 8094AA90  41 82 00 10 */	beq lbl_8094AAA0
/* 8094AA94  3C 60 80 95 */	lis r3, __vt__8cM3dGSph@ha /* 0x8094B99C@ha */
/* 8094AA98  38 03 B9 9C */	addi r0, r3, __vt__8cM3dGSph@l /* 0x8094B99C@l */
/* 8094AA9C  90 1E 08 18 */	stw r0, 0x818(r30)
lbl_8094AAA0:
/* 8094AAA0  34 1E 07 E8 */	addic. r0, r30, 0x7e8
/* 8094AAA4  41 82 00 24 */	beq lbl_8094AAC8
/* 8094AAA8  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 8094AAAC  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 8094AAB0  90 1E 08 04 */	stw r0, 0x804(r30)
/* 8094AAB4  34 1E 07 E8 */	addic. r0, r30, 0x7e8
/* 8094AAB8  41 82 00 10 */	beq lbl_8094AAC8
/* 8094AABC  3C 60 80 95 */	lis r3, __vt__8cM3dGAab@ha /* 0x8094B9A8@ha */
/* 8094AAC0  38 03 B9 A8 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x8094B9A8@l */
/* 8094AAC4  90 1E 08 00 */	stw r0, 0x800(r30)
lbl_8094AAC8:
/* 8094AAC8  38 7E 06 E4 */	addi r3, r30, 0x6e4
/* 8094AACC  38 80 00 00 */	li r4, 0
/* 8094AAD0  4B 73 96 15 */	bl __dt__12dCcD_GObjInfFv
lbl_8094AAD4:
/* 8094AAD4  34 1E 06 A8 */	addic. r0, r30, 0x6a8
/* 8094AAD8  41 82 00 54 */	beq lbl_8094AB2C
/* 8094AADC  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 8094AAE0  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 8094AAE4  90 7E 06 C0 */	stw r3, 0x6c0(r30)
/* 8094AAE8  38 03 00 20 */	addi r0, r3, 0x20
/* 8094AAEC  90 1E 06 C4 */	stw r0, 0x6c4(r30)
/* 8094AAF0  34 1E 06 C4 */	addic. r0, r30, 0x6c4
/* 8094AAF4  41 82 00 24 */	beq lbl_8094AB18
/* 8094AAF8  3C 60 80 95 */	lis r3, __vt__10dCcD_GStts@ha /* 0x8094B990@ha */
/* 8094AAFC  38 03 B9 90 */	addi r0, r3, __vt__10dCcD_GStts@l /* 0x8094B990@l */
/* 8094AB00  90 1E 06 C4 */	stw r0, 0x6c4(r30)
/* 8094AB04  34 1E 06 C4 */	addic. r0, r30, 0x6c4
/* 8094AB08  41 82 00 10 */	beq lbl_8094AB18
/* 8094AB0C  3C 60 80 95 */	lis r3, __vt__10cCcD_GStts@ha /* 0x8094B984@ha */
/* 8094AB10  38 03 B9 84 */	addi r0, r3, __vt__10cCcD_GStts@l /* 0x8094B984@l */
/* 8094AB14  90 1E 06 C4 */	stw r0, 0x6c4(r30)
lbl_8094AB18:
/* 8094AB18  34 1E 06 A8 */	addic. r0, r30, 0x6a8
/* 8094AB1C  41 82 00 10 */	beq lbl_8094AB2C
/* 8094AB20  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 8094AB24  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 8094AB28  90 1E 06 C0 */	stw r0, 0x6c0(r30)
lbl_8094AB2C:
/* 8094AB2C  38 7E 06 6C */	addi r3, r30, 0x66c
/* 8094AB30  38 80 FF FF */	li r4, -1
/* 8094AB34  4B 91 D1 61 */	bl __dt__11cBgS_GndChkFv
/* 8094AB38  38 7E 06 20 */	addi r3, r30, 0x620
/* 8094AB3C  38 80 FF FF */	li r4, -1
/* 8094AB40  4B 8F F4 09 */	bl __dt__10dMsgFlow_cFv
/* 8094AB44  38 7E 05 90 */	addi r3, r30, 0x590
/* 8094AB48  38 80 FF FF */	li r4, -1
/* 8094AB4C  4B 97 58 D5 */	bl __dt__10Z2CreatureFv
/* 8094AB50  34 1E 05 78 */	addic. r0, r30, 0x578
/* 8094AB54  41 82 00 20 */	beq lbl_8094AB74
/* 8094AB58  34 1E 05 78 */	addic. r0, r30, 0x578
/* 8094AB5C  41 82 00 18 */	beq lbl_8094AB74
/* 8094AB60  34 1E 05 78 */	addic. r0, r30, 0x578
/* 8094AB64  41 82 00 10 */	beq lbl_8094AB74
/* 8094AB68  3C 60 80 95 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x8094B9B4@ha */
/* 8094AB6C  38 03 B9 B4 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x8094B9B4@l */
/* 8094AB70  90 1E 05 78 */	stw r0, 0x578(r30)
lbl_8094AB74:
/* 8094AB74  7F C3 F3 78 */	mr r3, r30
/* 8094AB78  38 80 00 00 */	li r4, 0
/* 8094AB7C  4B 6C E1 11 */	bl __dt__10fopAc_ac_cFv
/* 8094AB80  7F E0 07 35 */	extsh. r0, r31
/* 8094AB84  40 81 00 0C */	ble lbl_8094AB90
/* 8094AB88  7F C3 F3 78 */	mr r3, r30
/* 8094AB8C  4B 98 41 B1 */	bl __dl__FPv
lbl_8094AB90:
/* 8094AB90  7F C3 F3 78 */	mr r3, r30
/* 8094AB94  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8094AB98  83 C1 00 08 */	lwz r30, 8(r1)
/* 8094AB9C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8094ABA0  7C 08 03 A6 */	mtlr r0
/* 8094ABA4  38 21 00 10 */	addi r1, r1, 0x10
/* 8094ABA8  4E 80 00 20 */	blr 
