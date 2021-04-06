lbl_80CFD034:
/* 80CFD034  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CFD038  7C 08 02 A6 */	mflr r0
/* 80CFD03C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CFD040  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CFD044  93 C1 00 08 */	stw r30, 8(r1)
/* 80CFD048  7C 7E 1B 79 */	or. r30, r3, r3
/* 80CFD04C  7C 9F 23 78 */	mr r31, r4
/* 80CFD050  41 82 01 3C */	beq lbl_80CFD18C
/* 80CFD054  3C 60 80 D0 */	lis r3, __vt__13daObjSwHang_c@ha /* 0x80CFD484@ha */
/* 80CFD058  38 63 D4 84 */	addi r3, r3, __vt__13daObjSwHang_c@l /* 0x80CFD484@l */
/* 80CFD05C  90 7E 05 9C */	stw r3, 0x59c(r30)
/* 80CFD060  38 03 00 28 */	addi r0, r3, 0x28
/* 80CFD064  90 1E 05 A0 */	stw r0, 0x5a0(r30)
/* 80CFD068  34 1E 05 F8 */	addic. r0, r30, 0x5f8
/* 80CFD06C  41 82 00 84 */	beq lbl_80CFD0F0
/* 80CFD070  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha /* 0x803ABFC0@ha */
/* 80CFD074  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l /* 0x803ABFC0@l */
/* 80CFD078  90 7E 06 34 */	stw r3, 0x634(r30)
/* 80CFD07C  38 03 00 2C */	addi r0, r3, 0x2c
/* 80CFD080  90 1E 07 18 */	stw r0, 0x718(r30)
/* 80CFD084  38 03 00 84 */	addi r0, r3, 0x84
/* 80CFD088  90 1E 07 2C */	stw r0, 0x72c(r30)
/* 80CFD08C  34 1E 06 FC */	addic. r0, r30, 0x6fc
/* 80CFD090  41 82 00 54 */	beq lbl_80CFD0E4
/* 80CFD094  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha /* 0x803C3540@ha */
/* 80CFD098  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l /* 0x803C3540@l */
/* 80CFD09C  90 7E 07 18 */	stw r3, 0x718(r30)
/* 80CFD0A0  38 03 00 58 */	addi r0, r3, 0x58
/* 80CFD0A4  90 1E 07 2C */	stw r0, 0x72c(r30)
/* 80CFD0A8  34 1E 07 1C */	addic. r0, r30, 0x71c
/* 80CFD0AC  41 82 00 10 */	beq lbl_80CFD0BC
/* 80CFD0B0  3C 60 80 D0 */	lis r3, __vt__8cM3dGSph@ha /* 0x80CFD454@ha */
/* 80CFD0B4  38 03 D4 54 */	addi r0, r3, __vt__8cM3dGSph@l /* 0x80CFD454@l */
/* 80CFD0B8  90 1E 07 2C */	stw r0, 0x72c(r30)
lbl_80CFD0BC:
/* 80CFD0BC  34 1E 06 FC */	addic. r0, r30, 0x6fc
/* 80CFD0C0  41 82 00 24 */	beq lbl_80CFD0E4
/* 80CFD0C4  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 80CFD0C8  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 80CFD0CC  90 1E 07 18 */	stw r0, 0x718(r30)
/* 80CFD0D0  34 1E 06 FC */	addic. r0, r30, 0x6fc
/* 80CFD0D4  41 82 00 10 */	beq lbl_80CFD0E4
/* 80CFD0D8  3C 60 80 D0 */	lis r3, __vt__8cM3dGAab@ha /* 0x80CFD460@ha */
/* 80CFD0DC  38 03 D4 60 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x80CFD460@l */
/* 80CFD0E0  90 1E 07 14 */	stw r0, 0x714(r30)
lbl_80CFD0E4:
/* 80CFD0E4  38 7E 05 F8 */	addi r3, r30, 0x5f8
/* 80CFD0E8  38 80 00 00 */	li r4, 0
/* 80CFD0EC  4B 38 6F F9 */	bl __dt__12dCcD_GObjInfFv
lbl_80CFD0F0:
/* 80CFD0F0  34 1E 05 BC */	addic. r0, r30, 0x5bc
/* 80CFD0F4  41 82 00 54 */	beq lbl_80CFD148
/* 80CFD0F8  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 80CFD0FC  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 80CFD100  90 7E 05 D4 */	stw r3, 0x5d4(r30)
/* 80CFD104  38 03 00 20 */	addi r0, r3, 0x20
/* 80CFD108  90 1E 05 D8 */	stw r0, 0x5d8(r30)
/* 80CFD10C  34 1E 05 D8 */	addic. r0, r30, 0x5d8
/* 80CFD110  41 82 00 24 */	beq lbl_80CFD134
/* 80CFD114  3C 60 80 D0 */	lis r3, __vt__10dCcD_GStts@ha /* 0x80CFD448@ha */
/* 80CFD118  38 03 D4 48 */	addi r0, r3, __vt__10dCcD_GStts@l /* 0x80CFD448@l */
/* 80CFD11C  90 1E 05 D8 */	stw r0, 0x5d8(r30)
/* 80CFD120  34 1E 05 D8 */	addic. r0, r30, 0x5d8
/* 80CFD124  41 82 00 10 */	beq lbl_80CFD134
/* 80CFD128  3C 60 80 D0 */	lis r3, __vt__10cCcD_GStts@ha /* 0x80CFD43C@ha */
/* 80CFD12C  38 03 D4 3C */	addi r0, r3, __vt__10cCcD_GStts@l /* 0x80CFD43C@l */
/* 80CFD130  90 1E 05 D8 */	stw r0, 0x5d8(r30)
lbl_80CFD134:
/* 80CFD134  34 1E 05 BC */	addic. r0, r30, 0x5bc
/* 80CFD138  41 82 00 10 */	beq lbl_80CFD148
/* 80CFD13C  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 80CFD140  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 80CFD144  90 1E 05 D4 */	stw r0, 0x5d4(r30)
lbl_80CFD148:
/* 80CFD148  34 1E 05 A0 */	addic. r0, r30, 0x5a0
/* 80CFD14C  41 82 00 10 */	beq lbl_80CFD15C
/* 80CFD150  3C 60 80 D0 */	lis r3, __vt__17dEvLib_callback_c@ha /* 0x80CFD46C@ha */
/* 80CFD154  38 03 D4 6C */	addi r0, r3, __vt__17dEvLib_callback_c@l /* 0x80CFD46C@l */
/* 80CFD158  90 1E 05 A0 */	stw r0, 0x5a0(r30)
lbl_80CFD15C:
/* 80CFD15C  28 1E 00 00 */	cmplwi r30, 0
/* 80CFD160  41 82 00 1C */	beq lbl_80CFD17C
/* 80CFD164  3C 60 80 3B */	lis r3, __vt__16dBgS_MoveBgActor@ha /* 0x803AB9A0@ha */
/* 80CFD168  38 03 B9 A0 */	addi r0, r3, __vt__16dBgS_MoveBgActor@l /* 0x803AB9A0@l */
/* 80CFD16C  90 1E 05 9C */	stw r0, 0x59c(r30)
/* 80CFD170  7F C3 F3 78 */	mr r3, r30
/* 80CFD174  38 80 00 00 */	li r4, 0
/* 80CFD178  4B 31 BB 15 */	bl __dt__10fopAc_ac_cFv
lbl_80CFD17C:
/* 80CFD17C  7F E0 07 35 */	extsh. r0, r31
/* 80CFD180  40 81 00 0C */	ble lbl_80CFD18C
/* 80CFD184  7F C3 F3 78 */	mr r3, r30
/* 80CFD188  4B 5D 1B B5 */	bl __dl__FPv
lbl_80CFD18C:
/* 80CFD18C  7F C3 F3 78 */	mr r3, r30
/* 80CFD190  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CFD194  83 C1 00 08 */	lwz r30, 8(r1)
/* 80CFD198  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CFD19C  7C 08 03 A6 */	mtlr r0
/* 80CFD1A0  38 21 00 10 */	addi r1, r1, 0x10
/* 80CFD1A4  4E 80 00 20 */	blr 
