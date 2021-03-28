lbl_805A3118:
/* 805A3118  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805A311C  7C 08 02 A6 */	mflr r0
/* 805A3120  90 01 00 14 */	stw r0, 0x14(r1)
/* 805A3124  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805A3128  93 C1 00 08 */	stw r30, 8(r1)
/* 805A312C  7C 7E 1B 79 */	or. r30, r3, r3
/* 805A3130  7C 9F 23 78 */	mr r31, r4
/* 805A3134  41 82 01 28 */	beq lbl_805A325C
/* 805A3138  3C 60 80 5A */	lis r3, __vt__14daTagAtkItem_c@ha
/* 805A313C  38 63 33 88 */	addi r3, r3, __vt__14daTagAtkItem_c@l
/* 805A3140  90 7E 05 78 */	stw r3, 0x578(r30)
/* 805A3144  38 03 00 08 */	addi r0, r3, 8
/* 805A3148  90 1E 05 68 */	stw r0, 0x568(r30)
/* 805A314C  34 1E 05 C0 */	addic. r0, r30, 0x5c0
/* 805A3150  41 82 00 84 */	beq lbl_805A31D4
/* 805A3154  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha
/* 805A3158  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l
/* 805A315C  90 7E 05 FC */	stw r3, 0x5fc(r30)
/* 805A3160  38 03 00 2C */	addi r0, r3, 0x2c
/* 805A3164  90 1E 06 E0 */	stw r0, 0x6e0(r30)
/* 805A3168  38 03 00 84 */	addi r0, r3, 0x84
/* 805A316C  90 1E 06 F8 */	stw r0, 0x6f8(r30)
/* 805A3170  34 1E 06 C4 */	addic. r0, r30, 0x6c4
/* 805A3174  41 82 00 54 */	beq lbl_805A31C8
/* 805A3178  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha
/* 805A317C  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l
/* 805A3180  90 7E 06 E0 */	stw r3, 0x6e0(r30)
/* 805A3184  38 03 00 58 */	addi r0, r3, 0x58
/* 805A3188  90 1E 06 F8 */	stw r0, 0x6f8(r30)
/* 805A318C  34 1E 06 E4 */	addic. r0, r30, 0x6e4
/* 805A3190  41 82 00 10 */	beq lbl_805A31A0
/* 805A3194  3C 60 80 5A */	lis r3, __vt__8cM3dGCyl@ha
/* 805A3198  38 03 33 CC */	addi r0, r3, __vt__8cM3dGCyl@l
/* 805A319C  90 1E 06 F8 */	stw r0, 0x6f8(r30)
lbl_805A31A0:
/* 805A31A0  34 1E 06 C4 */	addic. r0, r30, 0x6c4
/* 805A31A4  41 82 00 24 */	beq lbl_805A31C8
/* 805A31A8  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 805A31AC  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 805A31B0  90 1E 06 E0 */	stw r0, 0x6e0(r30)
/* 805A31B4  34 1E 06 C4 */	addic. r0, r30, 0x6c4
/* 805A31B8  41 82 00 10 */	beq lbl_805A31C8
/* 805A31BC  3C 60 80 5A */	lis r3, __vt__8cM3dGAab@ha
/* 805A31C0  38 03 33 D8 */	addi r0, r3, __vt__8cM3dGAab@l
/* 805A31C4  90 1E 06 DC */	stw r0, 0x6dc(r30)
lbl_805A31C8:
/* 805A31C8  38 7E 05 C0 */	addi r3, r30, 0x5c0
/* 805A31CC  38 80 00 00 */	li r4, 0
/* 805A31D0  4B AE 0F 14 */	b __dt__12dCcD_GObjInfFv
lbl_805A31D4:
/* 805A31D4  34 1E 05 84 */	addic. r0, r30, 0x584
/* 805A31D8  41 82 00 54 */	beq lbl_805A322C
/* 805A31DC  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 805A31E0  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 805A31E4  90 7E 05 9C */	stw r3, 0x59c(r30)
/* 805A31E8  38 03 00 20 */	addi r0, r3, 0x20
/* 805A31EC  90 1E 05 A0 */	stw r0, 0x5a0(r30)
/* 805A31F0  34 1E 05 A0 */	addic. r0, r30, 0x5a0
/* 805A31F4  41 82 00 24 */	beq lbl_805A3218
/* 805A31F8  3C 60 80 5A */	lis r3, __vt__10dCcD_GStts@ha
/* 805A31FC  38 03 33 C0 */	addi r0, r3, __vt__10dCcD_GStts@l
/* 805A3200  90 1E 05 A0 */	stw r0, 0x5a0(r30)
/* 805A3204  34 1E 05 A0 */	addic. r0, r30, 0x5a0
/* 805A3208  41 82 00 10 */	beq lbl_805A3218
/* 805A320C  3C 60 80 5A */	lis r3, __vt__10cCcD_GStts@ha
/* 805A3210  38 03 33 B4 */	addi r0, r3, __vt__10cCcD_GStts@l
/* 805A3214  90 1E 05 A0 */	stw r0, 0x5a0(r30)
lbl_805A3218:
/* 805A3218  34 1E 05 84 */	addic. r0, r30, 0x584
/* 805A321C  41 82 00 10 */	beq lbl_805A322C
/* 805A3220  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 805A3224  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 805A3228  90 1E 05 9C */	stw r0, 0x59c(r30)
lbl_805A322C:
/* 805A322C  34 1E 05 68 */	addic. r0, r30, 0x568
/* 805A3230  41 82 00 10 */	beq lbl_805A3240
/* 805A3234  3C 60 80 5A */	lis r3, __vt__17dEvLib_callback_c@ha
/* 805A3238  38 03 33 E4 */	addi r0, r3, __vt__17dEvLib_callback_c@l
/* 805A323C  90 1E 05 68 */	stw r0, 0x568(r30)
lbl_805A3240:
/* 805A3240  7F C3 F3 78 */	mr r3, r30
/* 805A3244  38 80 00 00 */	li r4, 0
/* 805A3248  4B A7 5A 44 */	b __dt__10fopAc_ac_cFv
/* 805A324C  7F E0 07 35 */	extsh. r0, r31
/* 805A3250  40 81 00 0C */	ble lbl_805A325C
/* 805A3254  7F C3 F3 78 */	mr r3, r30
/* 805A3258  4B D2 BA E4 */	b __dl__FPv
lbl_805A325C:
/* 805A325C  7F C3 F3 78 */	mr r3, r30
/* 805A3260  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805A3264  83 C1 00 08 */	lwz r30, 8(r1)
/* 805A3268  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805A326C  7C 08 03 A6 */	mtlr r0
/* 805A3270  38 21 00 10 */	addi r1, r1, 0x10
/* 805A3274  4E 80 00 20 */	blr 
