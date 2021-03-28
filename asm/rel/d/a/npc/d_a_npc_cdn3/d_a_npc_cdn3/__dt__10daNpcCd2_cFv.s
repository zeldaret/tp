lbl_8097F030:
/* 8097F030  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8097F034  7C 08 02 A6 */	mflr r0
/* 8097F038  90 01 00 14 */	stw r0, 0x14(r1)
/* 8097F03C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8097F040  93 C1 00 08 */	stw r30, 8(r1)
/* 8097F044  7C 7E 1B 79 */	or. r30, r3, r3
/* 8097F048  7C 9F 23 78 */	mr r31, r4
/* 8097F04C  41 82 02 18 */	beq lbl_8097F264
/* 8097F050  3C 60 80 98 */	lis r3, __vt__10daNpcCd2_c@ha
/* 8097F054  38 03 07 2C */	addi r0, r3, __vt__10daNpcCd2_c@l
/* 8097F058  90 1E 05 68 */	stw r0, 0x568(r30)
/* 8097F05C  34 1E 09 C8 */	addic. r0, r30, 0x9c8
/* 8097F060  41 82 00 A0 */	beq lbl_8097F100
/* 8097F064  3C 60 80 98 */	lis r3, __vt__16dNpcLib_lookat_c@ha
/* 8097F068  38 03 06 CC */	addi r0, r3, __vt__16dNpcLib_lookat_c@l
/* 8097F06C  90 1E 09 C8 */	stw r0, 0x9c8(r30)
/* 8097F070  38 7E 0A 5C */	addi r3, r30, 0xa5c
/* 8097F074  3C 80 80 98 */	lis r4, __dt__5csXyzFv@ha
/* 8097F078  38 84 D6 14 */	addi r4, r4, __dt__5csXyzFv@l
/* 8097F07C  38 A0 00 06 */	li r5, 6
/* 8097F080  38 C0 00 04 */	li r6, 4
/* 8097F084  4B 9E 2C 64 */	b __destroy_arr
/* 8097F088  38 7E 0A 44 */	addi r3, r30, 0xa44
/* 8097F08C  3C 80 80 98 */	lis r4, __dt__5csXyzFv@ha
/* 8097F090  38 84 D6 14 */	addi r4, r4, __dt__5csXyzFv@l
/* 8097F094  38 A0 00 06 */	li r5, 6
/* 8097F098  38 C0 00 04 */	li r6, 4
/* 8097F09C  4B 9E 2C 4C */	b __destroy_arr
/* 8097F0A0  38 7E 0A 2C */	addi r3, r30, 0xa2c
/* 8097F0A4  3C 80 80 98 */	lis r4, __dt__5csXyzFv@ha
/* 8097F0A8  38 84 D6 14 */	addi r4, r4, __dt__5csXyzFv@l
/* 8097F0AC  38 A0 00 06 */	li r5, 6
/* 8097F0B0  38 C0 00 04 */	li r6, 4
/* 8097F0B4  4B 9E 2C 34 */	b __destroy_arr
/* 8097F0B8  38 7E 0A 14 */	addi r3, r30, 0xa14
/* 8097F0BC  3C 80 80 98 */	lis r4, __dt__5csXyzFv@ha
/* 8097F0C0  38 84 D6 14 */	addi r4, r4, __dt__5csXyzFv@l
/* 8097F0C4  38 A0 00 06 */	li r5, 6
/* 8097F0C8  38 C0 00 04 */	li r6, 4
/* 8097F0CC  4B 9E 2C 1C */	b __destroy_arr
/* 8097F0D0  38 7E 09 FC */	addi r3, r30, 0x9fc
/* 8097F0D4  3C 80 80 98 */	lis r4, __dt__5csXyzFv@ha
/* 8097F0D8  38 84 D6 14 */	addi r4, r4, __dt__5csXyzFv@l
/* 8097F0DC  38 A0 00 06 */	li r5, 6
/* 8097F0E0  38 C0 00 04 */	li r6, 4
/* 8097F0E4  4B 9E 2C 04 */	b __destroy_arr
/* 8097F0E8  38 7E 09 CC */	addi r3, r30, 0x9cc
/* 8097F0EC  3C 80 80 98 */	lis r4, __dt__4cXyzFv@ha
/* 8097F0F0  38 84 99 F8 */	addi r4, r4, __dt__4cXyzFv@l
/* 8097F0F4  38 A0 00 0C */	li r5, 0xc
/* 8097F0F8  38 C0 00 04 */	li r6, 4
/* 8097F0FC  4B 9E 2B EC */	b __destroy_arr
lbl_8097F100:
/* 8097F100  34 1E 08 8C */	addic. r0, r30, 0x88c
/* 8097F104  41 82 00 84 */	beq lbl_8097F188
/* 8097F108  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha
/* 8097F10C  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l
/* 8097F110  90 7E 08 C8 */	stw r3, 0x8c8(r30)
/* 8097F114  38 03 00 2C */	addi r0, r3, 0x2c
/* 8097F118  90 1E 09 AC */	stw r0, 0x9ac(r30)
/* 8097F11C  38 03 00 84 */	addi r0, r3, 0x84
/* 8097F120  90 1E 09 C4 */	stw r0, 0x9c4(r30)
/* 8097F124  34 1E 09 90 */	addic. r0, r30, 0x990
/* 8097F128  41 82 00 54 */	beq lbl_8097F17C
/* 8097F12C  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha
/* 8097F130  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l
/* 8097F134  90 7E 09 AC */	stw r3, 0x9ac(r30)
/* 8097F138  38 03 00 58 */	addi r0, r3, 0x58
/* 8097F13C  90 1E 09 C4 */	stw r0, 0x9c4(r30)
/* 8097F140  34 1E 09 B0 */	addic. r0, r30, 0x9b0
/* 8097F144  41 82 00 10 */	beq lbl_8097F154
/* 8097F148  3C 60 80 98 */	lis r3, __vt__8cM3dGCyl@ha
/* 8097F14C  38 03 06 F0 */	addi r0, r3, __vt__8cM3dGCyl@l
/* 8097F150  90 1E 09 C4 */	stw r0, 0x9c4(r30)
lbl_8097F154:
/* 8097F154  34 1E 09 90 */	addic. r0, r30, 0x990
/* 8097F158  41 82 00 24 */	beq lbl_8097F17C
/* 8097F15C  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 8097F160  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 8097F164  90 1E 09 AC */	stw r0, 0x9ac(r30)
/* 8097F168  34 1E 09 90 */	addic. r0, r30, 0x990
/* 8097F16C  41 82 00 10 */	beq lbl_8097F17C
/* 8097F170  3C 60 80 98 */	lis r3, __vt__8cM3dGAab@ha
/* 8097F174  38 03 06 FC */	addi r0, r3, __vt__8cM3dGAab@l
/* 8097F178  90 1E 09 A8 */	stw r0, 0x9a8(r30)
lbl_8097F17C:
/* 8097F17C  38 7E 08 8C */	addi r3, r30, 0x88c
/* 8097F180  38 80 00 00 */	li r4, 0
/* 8097F184  4B 70 4F 60 */	b __dt__12dCcD_GObjInfFv
lbl_8097F188:
/* 8097F188  34 1E 08 50 */	addic. r0, r30, 0x850
/* 8097F18C  41 82 00 54 */	beq lbl_8097F1E0
/* 8097F190  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 8097F194  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 8097F198  90 7E 08 68 */	stw r3, 0x868(r30)
/* 8097F19C  38 03 00 20 */	addi r0, r3, 0x20
/* 8097F1A0  90 1E 08 6C */	stw r0, 0x86c(r30)
/* 8097F1A4  34 1E 08 6C */	addic. r0, r30, 0x86c
/* 8097F1A8  41 82 00 24 */	beq lbl_8097F1CC
/* 8097F1AC  3C 60 80 98 */	lis r3, __vt__10dCcD_GStts@ha
/* 8097F1B0  38 03 06 C0 */	addi r0, r3, __vt__10dCcD_GStts@l
/* 8097F1B4  90 1E 08 6C */	stw r0, 0x86c(r30)
/* 8097F1B8  34 1E 08 6C */	addic. r0, r30, 0x86c
/* 8097F1BC  41 82 00 10 */	beq lbl_8097F1CC
/* 8097F1C0  3C 60 80 98 */	lis r3, __vt__10cCcD_GStts@ha
/* 8097F1C4  38 03 06 B4 */	addi r0, r3, __vt__10cCcD_GStts@l
/* 8097F1C8  90 1E 08 6C */	stw r0, 0x86c(r30)
lbl_8097F1CC:
/* 8097F1CC  34 1E 08 50 */	addic. r0, r30, 0x850
/* 8097F1D0  41 82 00 10 */	beq lbl_8097F1E0
/* 8097F1D4  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 8097F1D8  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 8097F1DC  90 1E 08 68 */	stw r0, 0x868(r30)
lbl_8097F1E0:
/* 8097F1E0  34 1E 08 10 */	addic. r0, r30, 0x810
/* 8097F1E4  41 82 00 28 */	beq lbl_8097F20C
/* 8097F1E8  3C 60 80 98 */	lis r3, __vt__12dBgS_AcchCir@ha
/* 8097F1EC  38 03 06 A8 */	addi r0, r3, __vt__12dBgS_AcchCir@l
/* 8097F1F0  90 1E 08 1C */	stw r0, 0x81c(r30)
/* 8097F1F4  38 7E 08 24 */	addi r3, r30, 0x824
/* 8097F1F8  38 80 FF FF */	li r4, -1
/* 8097F1FC  4B 8E FD 1C */	b __dt__8cM3dGCirFv
/* 8097F200  38 7E 08 10 */	addi r3, r30, 0x810
/* 8097F204  38 80 00 00 */	li r4, 0
/* 8097F208  4B 8E 8E A8 */	b __dt__13cBgS_PolyInfoFv
lbl_8097F20C:
/* 8097F20C  34 1E 06 38 */	addic. r0, r30, 0x638
/* 8097F210  41 82 00 2C */	beq lbl_8097F23C
/* 8097F214  3C 60 80 98 */	lis r3, __vt__12dBgS_ObjAcch@ha
/* 8097F218  38 63 07 08 */	addi r3, r3, __vt__12dBgS_ObjAcch@l
/* 8097F21C  90 7E 06 48 */	stw r3, 0x648(r30)
/* 8097F220  38 03 00 0C */	addi r0, r3, 0xc
/* 8097F224  90 1E 06 4C */	stw r0, 0x64c(r30)
/* 8097F228  38 03 00 18 */	addi r0, r3, 0x18
/* 8097F22C  90 1E 06 5C */	stw r0, 0x65c(r30)
/* 8097F230  38 7E 06 38 */	addi r3, r30, 0x638
/* 8097F234  38 80 00 00 */	li r4, 0
/* 8097F238  4B 6F 6D 5C */	b __dt__9dBgS_AcchFv
lbl_8097F23C:
/* 8097F23C  38 7E 05 94 */	addi r3, r30, 0x594
/* 8097F240  38 80 FF FF */	li r4, -1
/* 8097F244  4B 94 1A 28 */	b __dt__17Z2CreatureCitizenFv
/* 8097F248  7F C3 F3 78 */	mr r3, r30
/* 8097F24C  38 80 00 00 */	li r4, 0
/* 8097F250  4B 69 9A 3C */	b __dt__10fopAc_ac_cFv
/* 8097F254  7F E0 07 35 */	extsh. r0, r31
/* 8097F258  40 81 00 0C */	ble lbl_8097F264
/* 8097F25C  7F C3 F3 78 */	mr r3, r30
/* 8097F260  4B 94 FA DC */	b __dl__FPv
lbl_8097F264:
/* 8097F264  7F C3 F3 78 */	mr r3, r30
/* 8097F268  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8097F26C  83 C1 00 08 */	lwz r30, 8(r1)
/* 8097F270  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8097F274  7C 08 03 A6 */	mtlr r0
/* 8097F278  38 21 00 10 */	addi r1, r1, 0x10
/* 8097F27C  4E 80 00 20 */	blr 
