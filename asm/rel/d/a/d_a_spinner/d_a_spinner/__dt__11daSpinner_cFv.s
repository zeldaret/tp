lbl_804D1FD0:
/* 804D1FD0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804D1FD4  7C 08 02 A6 */	mflr r0
/* 804D1FD8  90 01 00 14 */	stw r0, 0x14(r1)
/* 804D1FDC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804D1FE0  93 C1 00 08 */	stw r30, 8(r1)
/* 804D1FE4  7C 7E 1B 79 */	or. r30, r3, r3
/* 804D1FE8  7C 9F 23 78 */	mr r31, r4
/* 804D1FEC  41 82 01 B0 */	beq lbl_804D219C
/* 804D1FF0  38 7E 08 CC */	addi r3, r30, 0x8cc
/* 804D1FF4  4B DE C0 04 */	b deleteObject__14Z2SoundObjBaseFv
/* 804D1FF8  7F C3 F3 78 */	mr r3, r30
/* 804D1FFC  48 00 1F 19 */	bl clearSpreadEffect__11daSpinner_cFv
/* 804D2000  38 00 00 00 */	li r0, 0
/* 804D2004  90 1E 0A 64 */	stw r0, 0xa64(r30)
/* 804D2008  34 1E 09 28 */	addic. r0, r30, 0x928
/* 804D200C  41 82 00 84 */	beq lbl_804D2090
/* 804D2010  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha
/* 804D2014  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l
/* 804D2018  90 7E 09 64 */	stw r3, 0x964(r30)
/* 804D201C  38 03 00 2C */	addi r0, r3, 0x2c
/* 804D2020  90 1E 0A 48 */	stw r0, 0xa48(r30)
/* 804D2024  38 03 00 84 */	addi r0, r3, 0x84
/* 804D2028  90 1E 0A 60 */	stw r0, 0xa60(r30)
/* 804D202C  34 1E 0A 2C */	addic. r0, r30, 0xa2c
/* 804D2030  41 82 00 54 */	beq lbl_804D2084
/* 804D2034  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha
/* 804D2038  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l
/* 804D203C  90 7E 0A 48 */	stw r3, 0xa48(r30)
/* 804D2040  38 03 00 58 */	addi r0, r3, 0x58
/* 804D2044  90 1E 0A 60 */	stw r0, 0xa60(r30)
/* 804D2048  34 1E 0A 4C */	addic. r0, r30, 0xa4c
/* 804D204C  41 82 00 10 */	beq lbl_804D205C
/* 804D2050  3C 60 80 4D */	lis r3, __vt__8cM3dGCyl@ha
/* 804D2054  38 03 4F 78 */	addi r0, r3, __vt__8cM3dGCyl@l
/* 804D2058  90 1E 0A 60 */	stw r0, 0xa60(r30)
lbl_804D205C:
/* 804D205C  34 1E 0A 2C */	addic. r0, r30, 0xa2c
/* 804D2060  41 82 00 24 */	beq lbl_804D2084
/* 804D2064  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 804D2068  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 804D206C  90 1E 0A 48 */	stw r0, 0xa48(r30)
/* 804D2070  34 1E 0A 2C */	addic. r0, r30, 0xa2c
/* 804D2074  41 82 00 10 */	beq lbl_804D2084
/* 804D2078  3C 60 80 4D */	lis r3, __vt__8cM3dGAab@ha
/* 804D207C  38 03 4F 84 */	addi r0, r3, __vt__8cM3dGAab@l
/* 804D2080  90 1E 0A 44 */	stw r0, 0xa44(r30)
lbl_804D2084:
/* 804D2084  38 7E 09 28 */	addi r3, r30, 0x928
/* 804D2088  38 80 00 00 */	li r4, 0
/* 804D208C  4B BB 20 58 */	b __dt__12dCcD_GObjInfFv
lbl_804D2090:
/* 804D2090  34 1E 08 EC */	addic. r0, r30, 0x8ec
/* 804D2094  41 82 00 54 */	beq lbl_804D20E8
/* 804D2098  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 804D209C  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 804D20A0  90 7E 09 04 */	stw r3, 0x904(r30)
/* 804D20A4  38 03 00 20 */	addi r0, r3, 0x20
/* 804D20A8  90 1E 09 08 */	stw r0, 0x908(r30)
/* 804D20AC  34 1E 09 08 */	addic. r0, r30, 0x908
/* 804D20B0  41 82 00 24 */	beq lbl_804D20D4
/* 804D20B4  3C 60 80 4D */	lis r3, __vt__10dCcD_GStts@ha
/* 804D20B8  38 03 4F 6C */	addi r0, r3, __vt__10dCcD_GStts@l
/* 804D20BC  90 1E 09 08 */	stw r0, 0x908(r30)
/* 804D20C0  34 1E 09 08 */	addic. r0, r30, 0x908
/* 804D20C4  41 82 00 10 */	beq lbl_804D20D4
/* 804D20C8  3C 60 80 4D */	lis r3, __vt__10cCcD_GStts@ha
/* 804D20CC  38 03 4F 60 */	addi r0, r3, __vt__10cCcD_GStts@l
/* 804D20D0  90 1E 09 08 */	stw r0, 0x908(r30)
lbl_804D20D4:
/* 804D20D4  34 1E 08 EC */	addic. r0, r30, 0x8ec
/* 804D20D8  41 82 00 10 */	beq lbl_804D20E8
/* 804D20DC  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 804D20E0  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 804D20E4  90 1E 09 04 */	stw r0, 0x904(r30)
lbl_804D20E8:
/* 804D20E8  34 1E 08 CC */	addic. r0, r30, 0x8cc
/* 804D20EC  41 82 00 1C */	beq lbl_804D2108
/* 804D20F0  3C 60 80 3D */	lis r3, __vt__16Z2SoundObjSimple@ha
/* 804D20F4  38 03 AD 10 */	addi r0, r3, __vt__16Z2SoundObjSimple@l
/* 804D20F8  90 1E 08 DC */	stw r0, 0x8dc(r30)
/* 804D20FC  38 7E 08 CC */	addi r3, r30, 0x8cc
/* 804D2100  38 80 00 00 */	li r4, 0
/* 804D2104  4B DE BE 44 */	b __dt__14Z2SoundObjBaseFv
lbl_804D2108:
/* 804D2108  38 7E 08 24 */	addi r3, r30, 0x824
/* 804D210C  38 80 FF FF */	li r4, -1
/* 804D2110  4B BA 5F 7C */	b __dt__15dBgS_LinkLinChkFv
/* 804D2114  34 1E 06 4C */	addic. r0, r30, 0x64c
/* 804D2118  41 82 00 2C */	beq lbl_804D2144
/* 804D211C  3C 60 80 4D */	lis r3, __vt__13dBgS_LinkAcch@ha
/* 804D2120  38 63 4F 90 */	addi r3, r3, __vt__13dBgS_LinkAcch@l
/* 804D2124  90 7E 06 5C */	stw r3, 0x65c(r30)
/* 804D2128  38 03 00 0C */	addi r0, r3, 0xc
/* 804D212C  90 1E 06 60 */	stw r0, 0x660(r30)
/* 804D2130  38 03 00 18 */	addi r0, r3, 0x18
/* 804D2134  90 1E 06 70 */	stw r0, 0x670(r30)
/* 804D2138  38 7E 06 4C */	addi r3, r30, 0x64c
/* 804D213C  38 80 00 00 */	li r4, 0
/* 804D2140  4B BA 3E 54 */	b __dt__9dBgS_AcchFv
lbl_804D2144:
/* 804D2144  38 7E 05 8C */	addi r3, r30, 0x58c
/* 804D2148  3C 80 80 4D */	lis r4, __dt__12dBgS_AcchCirFv@ha
/* 804D214C  38 84 1E F8 */	addi r4, r4, __dt__12dBgS_AcchCirFv@l
/* 804D2150  38 A0 00 40 */	li r5, 0x40
/* 804D2154  38 C0 00 03 */	li r6, 3
/* 804D2158  4B E8 FB 90 */	b __destroy_arr
/* 804D215C  34 1E 05 6C */	addic. r0, r30, 0x56c
/* 804D2160  41 82 00 20 */	beq lbl_804D2180
/* 804D2164  34 1E 05 6C */	addic. r0, r30, 0x56c
/* 804D2168  41 82 00 18 */	beq lbl_804D2180
/* 804D216C  34 1E 05 6C */	addic. r0, r30, 0x56c
/* 804D2170  41 82 00 10 */	beq lbl_804D2180
/* 804D2174  3C 60 80 4D */	lis r3, __vt__12J3DFrameCtrl@ha
/* 804D2178  38 03 4F B4 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 804D217C  90 1E 05 6C */	stw r0, 0x56c(r30)
lbl_804D2180:
/* 804D2180  7F C3 F3 78 */	mr r3, r30
/* 804D2184  38 80 00 00 */	li r4, 0
/* 804D2188  4B B4 6B 04 */	b __dt__10fopAc_ac_cFv
/* 804D218C  7F E0 07 35 */	extsh. r0, r31
/* 804D2190  40 81 00 0C */	ble lbl_804D219C
/* 804D2194  7F C3 F3 78 */	mr r3, r30
/* 804D2198  4B DF CB A4 */	b __dl__FPv
lbl_804D219C:
/* 804D219C  7F C3 F3 78 */	mr r3, r30
/* 804D21A0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804D21A4  83 C1 00 08 */	lwz r30, 8(r1)
/* 804D21A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804D21AC  7C 08 03 A6 */	mtlr r0
/* 804D21B0  38 21 00 10 */	addi r1, r1, 0x10
/* 804D21B4  4E 80 00 20 */	blr 
