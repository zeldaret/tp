lbl_80CF8124:
/* 80CF8124  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CF8128  7C 08 02 A6 */	mflr r0
/* 80CF812C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CF8130  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CF8134  93 C1 00 08 */	stw r30, 8(r1)
/* 80CF8138  7C 7E 1B 79 */	or. r30, r3, r3
/* 80CF813C  7C 9F 23 78 */	mr r31, r4
/* 80CF8140  41 82 01 FC */	beq lbl_80CF833C
/* 80CF8144  3C 60 80 D0 */	lis r3, __vt__14daObjSwLight_c@ha
/* 80CF8148  38 63 85 EC */	addi r3, r3, __vt__14daObjSwLight_c@l
/* 80CF814C  90 7E 05 9C */	stw r3, 0x59c(r30)
/* 80CF8150  38 03 00 28 */	addi r0, r3, 0x28
/* 80CF8154  90 1E 05 A0 */	stw r0, 0x5a0(r30)
/* 80CF8158  34 1E 0B 00 */	addic. r0, r30, 0xb00
/* 80CF815C  41 82 00 1C */	beq lbl_80CF8178
/* 80CF8160  3C 60 80 3D */	lis r3, __vt__16Z2SoundObjSimple@ha
/* 80CF8164  38 03 AD 10 */	addi r0, r3, __vt__16Z2SoundObjSimple@l
/* 80CF8168  90 1E 0B 10 */	stw r0, 0xb10(r30)
/* 80CF816C  38 7E 0B 00 */	addi r3, r30, 0xb00
/* 80CF8170  38 80 00 00 */	li r4, 0
/* 80CF8174  4B 5C 5D D4 */	b __dt__14Z2SoundObjBaseFv
lbl_80CF8178:
/* 80CF8178  34 1E 09 A0 */	addic. r0, r30, 0x9a0
/* 80CF817C  41 82 00 84 */	beq lbl_80CF8200
/* 80CF8180  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha
/* 80CF8184  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l
/* 80CF8188  90 7E 09 DC */	stw r3, 0x9dc(r30)
/* 80CF818C  38 03 00 2C */	addi r0, r3, 0x2c
/* 80CF8190  90 1E 0A C0 */	stw r0, 0xac0(r30)
/* 80CF8194  38 03 00 84 */	addi r0, r3, 0x84
/* 80CF8198  90 1E 0A D8 */	stw r0, 0xad8(r30)
/* 80CF819C  34 1E 0A A4 */	addic. r0, r30, 0xaa4
/* 80CF81A0  41 82 00 54 */	beq lbl_80CF81F4
/* 80CF81A4  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha
/* 80CF81A8  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l
/* 80CF81AC  90 7E 0A C0 */	stw r3, 0xac0(r30)
/* 80CF81B0  38 03 00 58 */	addi r0, r3, 0x58
/* 80CF81B4  90 1E 0A D8 */	stw r0, 0xad8(r30)
/* 80CF81B8  34 1E 0A C4 */	addic. r0, r30, 0xac4
/* 80CF81BC  41 82 00 10 */	beq lbl_80CF81CC
/* 80CF81C0  3C 60 80 D0 */	lis r3, __vt__8cM3dGCyl@ha
/* 80CF81C4  38 03 85 B0 */	addi r0, r3, __vt__8cM3dGCyl@l
/* 80CF81C8  90 1E 0A D8 */	stw r0, 0xad8(r30)
lbl_80CF81CC:
/* 80CF81CC  34 1E 0A A4 */	addic. r0, r30, 0xaa4
/* 80CF81D0  41 82 00 24 */	beq lbl_80CF81F4
/* 80CF81D4  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 80CF81D8  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 80CF81DC  90 1E 0A C0 */	stw r0, 0xac0(r30)
/* 80CF81E0  34 1E 0A A4 */	addic. r0, r30, 0xaa4
/* 80CF81E4  41 82 00 10 */	beq lbl_80CF81F4
/* 80CF81E8  3C 60 80 D0 */	lis r3, __vt__8cM3dGAab@ha
/* 80CF81EC  38 03 85 C8 */	addi r0, r3, __vt__8cM3dGAab@l
/* 80CF81F0  90 1E 0A BC */	stw r0, 0xabc(r30)
lbl_80CF81F4:
/* 80CF81F4  38 7E 09 A0 */	addi r3, r30, 0x9a0
/* 80CF81F8  38 80 00 00 */	li r4, 0
/* 80CF81FC  4B 38 BE E8 */	b __dt__12dCcD_GObjInfFv
lbl_80CF8200:
/* 80CF8200  38 7E 07 30 */	addi r3, r30, 0x730
/* 80CF8204  3C 80 80 CF */	lis r4, __dt__8dCcD_SphFv@ha
/* 80CF8208  38 84 7E 58 */	addi r4, r4, __dt__8dCcD_SphFv@l
/* 80CF820C  38 A0 01 38 */	li r5, 0x138
/* 80CF8210  38 C0 00 02 */	li r6, 2
/* 80CF8214  4B 66 9A D4 */	b __destroy_arr
/* 80CF8218  34 1E 05 F8 */	addic. r0, r30, 0x5f8
/* 80CF821C  41 82 00 84 */	beq lbl_80CF82A0
/* 80CF8220  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha
/* 80CF8224  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l
/* 80CF8228  90 7E 06 34 */	stw r3, 0x634(r30)
/* 80CF822C  38 03 00 2C */	addi r0, r3, 0x2c
/* 80CF8230  90 1E 07 18 */	stw r0, 0x718(r30)
/* 80CF8234  38 03 00 84 */	addi r0, r3, 0x84
/* 80CF8238  90 1E 07 2C */	stw r0, 0x72c(r30)
/* 80CF823C  34 1E 06 FC */	addic. r0, r30, 0x6fc
/* 80CF8240  41 82 00 54 */	beq lbl_80CF8294
/* 80CF8244  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha
/* 80CF8248  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l
/* 80CF824C  90 7E 07 18 */	stw r3, 0x718(r30)
/* 80CF8250  38 03 00 58 */	addi r0, r3, 0x58
/* 80CF8254  90 1E 07 2C */	stw r0, 0x72c(r30)
/* 80CF8258  34 1E 07 1C */	addic. r0, r30, 0x71c
/* 80CF825C  41 82 00 10 */	beq lbl_80CF826C
/* 80CF8260  3C 60 80 D0 */	lis r3, __vt__8cM3dGSph@ha
/* 80CF8264  38 03 85 BC */	addi r0, r3, __vt__8cM3dGSph@l
/* 80CF8268  90 1E 07 2C */	stw r0, 0x72c(r30)
lbl_80CF826C:
/* 80CF826C  34 1E 06 FC */	addic. r0, r30, 0x6fc
/* 80CF8270  41 82 00 24 */	beq lbl_80CF8294
/* 80CF8274  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 80CF8278  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 80CF827C  90 1E 07 18 */	stw r0, 0x718(r30)
/* 80CF8280  34 1E 06 FC */	addic. r0, r30, 0x6fc
/* 80CF8284  41 82 00 10 */	beq lbl_80CF8294
/* 80CF8288  3C 60 80 D0 */	lis r3, __vt__8cM3dGAab@ha
/* 80CF828C  38 03 85 C8 */	addi r0, r3, __vt__8cM3dGAab@l
/* 80CF8290  90 1E 07 14 */	stw r0, 0x714(r30)
lbl_80CF8294:
/* 80CF8294  38 7E 05 F8 */	addi r3, r30, 0x5f8
/* 80CF8298  38 80 00 00 */	li r4, 0
/* 80CF829C  4B 38 BE 48 */	b __dt__12dCcD_GObjInfFv
lbl_80CF82A0:
/* 80CF82A0  34 1E 05 BC */	addic. r0, r30, 0x5bc
/* 80CF82A4  41 82 00 54 */	beq lbl_80CF82F8
/* 80CF82A8  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 80CF82AC  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 80CF82B0  90 7E 05 D4 */	stw r3, 0x5d4(r30)
/* 80CF82B4  38 03 00 20 */	addi r0, r3, 0x20
/* 80CF82B8  90 1E 05 D8 */	stw r0, 0x5d8(r30)
/* 80CF82BC  34 1E 05 D8 */	addic. r0, r30, 0x5d8
/* 80CF82C0  41 82 00 24 */	beq lbl_80CF82E4
/* 80CF82C4  3C 60 80 D0 */	lis r3, __vt__10dCcD_GStts@ha
/* 80CF82C8  38 03 85 A4 */	addi r0, r3, __vt__10dCcD_GStts@l
/* 80CF82CC  90 1E 05 D8 */	stw r0, 0x5d8(r30)
/* 80CF82D0  34 1E 05 D8 */	addic. r0, r30, 0x5d8
/* 80CF82D4  41 82 00 10 */	beq lbl_80CF82E4
/* 80CF82D8  3C 60 80 D0 */	lis r3, __vt__10cCcD_GStts@ha
/* 80CF82DC  38 03 85 98 */	addi r0, r3, __vt__10cCcD_GStts@l
/* 80CF82E0  90 1E 05 D8 */	stw r0, 0x5d8(r30)
lbl_80CF82E4:
/* 80CF82E4  34 1E 05 BC */	addic. r0, r30, 0x5bc
/* 80CF82E8  41 82 00 10 */	beq lbl_80CF82F8
/* 80CF82EC  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 80CF82F0  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 80CF82F4  90 1E 05 D4 */	stw r0, 0x5d4(r30)
lbl_80CF82F8:
/* 80CF82F8  34 1E 05 A0 */	addic. r0, r30, 0x5a0
/* 80CF82FC  41 82 00 10 */	beq lbl_80CF830C
/* 80CF8300  3C 60 80 D0 */	lis r3, __vt__17dEvLib_callback_c@ha
/* 80CF8304  38 03 85 D4 */	addi r0, r3, __vt__17dEvLib_callback_c@l
/* 80CF8308  90 1E 05 A0 */	stw r0, 0x5a0(r30)
lbl_80CF830C:
/* 80CF830C  28 1E 00 00 */	cmplwi r30, 0
/* 80CF8310  41 82 00 1C */	beq lbl_80CF832C
/* 80CF8314  3C 60 80 3B */	lis r3, __vt__16dBgS_MoveBgActor@ha
/* 80CF8318  38 03 B9 A0 */	addi r0, r3, __vt__16dBgS_MoveBgActor@l
/* 80CF831C  90 1E 05 9C */	stw r0, 0x59c(r30)
/* 80CF8320  7F C3 F3 78 */	mr r3, r30
/* 80CF8324  38 80 00 00 */	li r4, 0
/* 80CF8328  4B 32 09 64 */	b __dt__10fopAc_ac_cFv
lbl_80CF832C:
/* 80CF832C  7F E0 07 35 */	extsh. r0, r31
/* 80CF8330  40 81 00 0C */	ble lbl_80CF833C
/* 80CF8334  7F C3 F3 78 */	mr r3, r30
/* 80CF8338  4B 5D 6A 04 */	b __dl__FPv
lbl_80CF833C:
/* 80CF833C  7F C3 F3 78 */	mr r3, r30
/* 80CF8340  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CF8344  83 C1 00 08 */	lwz r30, 8(r1)
/* 80CF8348  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CF834C  7C 08 03 A6 */	mtlr r0
/* 80CF8350  38 21 00 10 */	addi r1, r1, 0x10
/* 80CF8354  4E 80 00 20 */	blr 
