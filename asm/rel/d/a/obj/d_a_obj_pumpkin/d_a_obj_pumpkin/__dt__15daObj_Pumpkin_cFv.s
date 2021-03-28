lbl_80CB578C:
/* 80CB578C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CB5790  7C 08 02 A6 */	mflr r0
/* 80CB5794  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CB5798  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CB579C  93 C1 00 08 */	stw r30, 8(r1)
/* 80CB57A0  7C 7E 1B 79 */	or. r30, r3, r3
/* 80CB57A4  7C 9F 23 78 */	mr r31, r4
/* 80CB57A8  41 82 02 40 */	beq lbl_80CB59E8
/* 80CB57AC  3C 60 80 CC */	lis r3, __vt__15daObj_Pumpkin_c@ha
/* 80CB57B0  38 03 85 B0 */	addi r0, r3, __vt__15daObj_Pumpkin_c@l
/* 80CB57B4  90 1E 0B B8 */	stw r0, 0xbb8(r30)
/* 80CB57B8  38 7E 05 6C */	addi r3, r30, 0x56c
/* 80CB57BC  3C 80 80 CC */	lis r4, l_bmdData@ha
/* 80CB57C0  38 84 84 8C */	addi r4, r4, l_bmdData@l
/* 80CB57C4  80 04 00 04 */	lwz r0, 4(r4)
/* 80CB57C8  54 00 10 3A */	slwi r0, r0, 2
/* 80CB57CC  3C 80 80 CC */	lis r4, l_resNameList@ha
/* 80CB57D0  38 84 84 94 */	addi r4, r4, l_resNameList@l
/* 80CB57D4  7C 84 00 2E */	lwzx r4, r4, r0
/* 80CB57D8  4B 37 78 30 */	b dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80CB57DC  38 7E 0A A8 */	addi r3, r30, 0xaa8
/* 80CB57E0  38 80 FF FF */	li r4, -1
/* 80CB57E4  4B 3C 24 F8 */	b __dt__11dBgS_LinChkFv
/* 80CB57E8  34 1E 0A 8C */	addic. r0, r30, 0xa8c
/* 80CB57EC  41 82 00 10 */	beq lbl_80CB57FC
/* 80CB57F0  3C 60 80 CC */	lis r3, __vt__8cM3dGLin@ha
/* 80CB57F4  38 03 85 A4 */	addi r0, r3, __vt__8cM3dGLin@l
/* 80CB57F8  90 1E 0A A4 */	stw r0, 0xaa4(r30)
lbl_80CB57FC:
/* 80CB57FC  34 1E 09 44 */	addic. r0, r30, 0x944
/* 80CB5800  41 82 00 84 */	beq lbl_80CB5884
/* 80CB5804  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha
/* 80CB5808  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l
/* 80CB580C  90 7E 09 80 */	stw r3, 0x980(r30)
/* 80CB5810  38 03 00 2C */	addi r0, r3, 0x2c
/* 80CB5814  90 1E 0A 64 */	stw r0, 0xa64(r30)
/* 80CB5818  38 03 00 84 */	addi r0, r3, 0x84
/* 80CB581C  90 1E 0A 7C */	stw r0, 0xa7c(r30)
/* 80CB5820  34 1E 0A 48 */	addic. r0, r30, 0xa48
/* 80CB5824  41 82 00 54 */	beq lbl_80CB5878
/* 80CB5828  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha
/* 80CB582C  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l
/* 80CB5830  90 7E 0A 64 */	stw r3, 0xa64(r30)
/* 80CB5834  38 03 00 58 */	addi r0, r3, 0x58
/* 80CB5838  90 1E 0A 7C */	stw r0, 0xa7c(r30)
/* 80CB583C  34 1E 0A 68 */	addic. r0, r30, 0xa68
/* 80CB5840  41 82 00 10 */	beq lbl_80CB5850
/* 80CB5844  3C 60 80 CC */	lis r3, __vt__8cM3dGCyl@ha
/* 80CB5848  38 03 85 98 */	addi r0, r3, __vt__8cM3dGCyl@l
/* 80CB584C  90 1E 0A 7C */	stw r0, 0xa7c(r30)
lbl_80CB5850:
/* 80CB5850  34 1E 0A 48 */	addic. r0, r30, 0xa48
/* 80CB5854  41 82 00 24 */	beq lbl_80CB5878
/* 80CB5858  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 80CB585C  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 80CB5860  90 1E 0A 64 */	stw r0, 0xa64(r30)
/* 80CB5864  34 1E 0A 48 */	addic. r0, r30, 0xa48
/* 80CB5868  41 82 00 10 */	beq lbl_80CB5878
/* 80CB586C  3C 60 80 CC */	lis r3, __vt__8cM3dGAab@ha
/* 80CB5870  38 03 85 8C */	addi r0, r3, __vt__8cM3dGAab@l
/* 80CB5874  90 1E 0A 60 */	stw r0, 0xa60(r30)
lbl_80CB5878:
/* 80CB5878  38 7E 09 44 */	addi r3, r30, 0x944
/* 80CB587C  38 80 00 00 */	li r4, 0
/* 80CB5880  4B 3C E8 64 */	b __dt__12dCcD_GObjInfFv
lbl_80CB5884:
/* 80CB5884  34 1E 08 08 */	addic. r0, r30, 0x808
/* 80CB5888  41 82 00 84 */	beq lbl_80CB590C
/* 80CB588C  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha
/* 80CB5890  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l
/* 80CB5894  90 7E 08 44 */	stw r3, 0x844(r30)
/* 80CB5898  38 03 00 2C */	addi r0, r3, 0x2c
/* 80CB589C  90 1E 09 28 */	stw r0, 0x928(r30)
/* 80CB58A0  38 03 00 84 */	addi r0, r3, 0x84
/* 80CB58A4  90 1E 09 40 */	stw r0, 0x940(r30)
/* 80CB58A8  34 1E 09 0C */	addic. r0, r30, 0x90c
/* 80CB58AC  41 82 00 54 */	beq lbl_80CB5900
/* 80CB58B0  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha
/* 80CB58B4  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l
/* 80CB58B8  90 7E 09 28 */	stw r3, 0x928(r30)
/* 80CB58BC  38 03 00 58 */	addi r0, r3, 0x58
/* 80CB58C0  90 1E 09 40 */	stw r0, 0x940(r30)
/* 80CB58C4  34 1E 09 2C */	addic. r0, r30, 0x92c
/* 80CB58C8  41 82 00 10 */	beq lbl_80CB58D8
/* 80CB58CC  3C 60 80 CC */	lis r3, __vt__8cM3dGCyl@ha
/* 80CB58D0  38 03 85 98 */	addi r0, r3, __vt__8cM3dGCyl@l
/* 80CB58D4  90 1E 09 40 */	stw r0, 0x940(r30)
lbl_80CB58D8:
/* 80CB58D8  34 1E 09 0C */	addic. r0, r30, 0x90c
/* 80CB58DC  41 82 00 24 */	beq lbl_80CB5900
/* 80CB58E0  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 80CB58E4  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 80CB58E8  90 1E 09 28 */	stw r0, 0x928(r30)
/* 80CB58EC  34 1E 09 0C */	addic. r0, r30, 0x90c
/* 80CB58F0  41 82 00 10 */	beq lbl_80CB5900
/* 80CB58F4  3C 60 80 CC */	lis r3, __vt__8cM3dGAab@ha
/* 80CB58F8  38 03 85 8C */	addi r0, r3, __vt__8cM3dGAab@l
/* 80CB58FC  90 1E 09 24 */	stw r0, 0x924(r30)
lbl_80CB5900:
/* 80CB5900  38 7E 08 08 */	addi r3, r30, 0x808
/* 80CB5904  38 80 00 00 */	li r4, 0
/* 80CB5908  4B 3C E7 DC */	b __dt__12dCcD_GObjInfFv
lbl_80CB590C:
/* 80CB590C  38 7E 07 CC */	addi r3, r30, 0x7cc
/* 80CB5910  38 80 FF FF */	li r4, -1
/* 80CB5914  4B 5B 23 80 */	b __dt__11cBgS_GndChkFv
/* 80CB5918  34 1E 07 8C */	addic. r0, r30, 0x78c
/* 80CB591C  41 82 00 28 */	beq lbl_80CB5944
/* 80CB5920  3C 60 80 CC */	lis r3, __vt__12dBgS_AcchCir@ha
/* 80CB5924  38 03 85 80 */	addi r0, r3, __vt__12dBgS_AcchCir@l
/* 80CB5928  90 1E 07 98 */	stw r0, 0x798(r30)
/* 80CB592C  38 7E 07 A0 */	addi r3, r30, 0x7a0
/* 80CB5930  38 80 FF FF */	li r4, -1
/* 80CB5934  4B 5B 95 E4 */	b __dt__8cM3dGCirFv
/* 80CB5938  38 7E 07 8C */	addi r3, r30, 0x78c
/* 80CB593C  38 80 00 00 */	li r4, 0
/* 80CB5940  4B 5B 27 70 */	b __dt__13cBgS_PolyInfoFv
lbl_80CB5944:
/* 80CB5944  34 1E 07 50 */	addic. r0, r30, 0x750
/* 80CB5948  41 82 00 54 */	beq lbl_80CB599C
/* 80CB594C  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 80CB5950  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 80CB5954  90 7E 07 68 */	stw r3, 0x768(r30)
/* 80CB5958  38 03 00 20 */	addi r0, r3, 0x20
/* 80CB595C  90 1E 07 6C */	stw r0, 0x76c(r30)
/* 80CB5960  34 1E 07 6C */	addic. r0, r30, 0x76c
/* 80CB5964  41 82 00 24 */	beq lbl_80CB5988
/* 80CB5968  3C 60 80 CC */	lis r3, __vt__10dCcD_GStts@ha
/* 80CB596C  38 03 85 74 */	addi r0, r3, __vt__10dCcD_GStts@l
/* 80CB5970  90 1E 07 6C */	stw r0, 0x76c(r30)
/* 80CB5974  34 1E 07 6C */	addic. r0, r30, 0x76c
/* 80CB5978  41 82 00 10 */	beq lbl_80CB5988
/* 80CB597C  3C 60 80 CC */	lis r3, __vt__10cCcD_GStts@ha
/* 80CB5980  38 03 85 68 */	addi r0, r3, __vt__10cCcD_GStts@l
/* 80CB5984  90 1E 07 6C */	stw r0, 0x76c(r30)
lbl_80CB5988:
/* 80CB5988  34 1E 07 50 */	addic. r0, r30, 0x750
/* 80CB598C  41 82 00 10 */	beq lbl_80CB599C
/* 80CB5990  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 80CB5994  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 80CB5998  90 1E 07 68 */	stw r0, 0x768(r30)
lbl_80CB599C:
/* 80CB599C  34 1E 05 78 */	addic. r0, r30, 0x578
/* 80CB59A0  41 82 00 2C */	beq lbl_80CB59CC
/* 80CB59A4  3C 60 80 CC */	lis r3, __vt__12dBgS_ObjAcch@ha
/* 80CB59A8  38 63 85 44 */	addi r3, r3, __vt__12dBgS_ObjAcch@l
/* 80CB59AC  90 7E 05 88 */	stw r3, 0x588(r30)
/* 80CB59B0  38 03 00 0C */	addi r0, r3, 0xc
/* 80CB59B4  90 1E 05 8C */	stw r0, 0x58c(r30)
/* 80CB59B8  38 03 00 18 */	addi r0, r3, 0x18
/* 80CB59BC  90 1E 05 9C */	stw r0, 0x59c(r30)
/* 80CB59C0  38 7E 05 78 */	addi r3, r30, 0x578
/* 80CB59C4  38 80 00 00 */	li r4, 0
/* 80CB59C8  4B 3C 05 CC */	b __dt__9dBgS_AcchFv
lbl_80CB59CC:
/* 80CB59CC  7F C3 F3 78 */	mr r3, r30
/* 80CB59D0  38 80 00 00 */	li r4, 0
/* 80CB59D4  4B 36 32 B8 */	b __dt__10fopAc_ac_cFv
/* 80CB59D8  7F E0 07 35 */	extsh. r0, r31
/* 80CB59DC  40 81 00 0C */	ble lbl_80CB59E8
/* 80CB59E0  7F C3 F3 78 */	mr r3, r30
/* 80CB59E4  4B 61 93 58 */	b __dl__FPv
lbl_80CB59E8:
/* 80CB59E8  7F C3 F3 78 */	mr r3, r30
/* 80CB59EC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CB59F0  83 C1 00 08 */	lwz r30, 8(r1)
/* 80CB59F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CB59F8  7C 08 03 A6 */	mtlr r0
/* 80CB59FC  38 21 00 10 */	addi r1, r1, 0x10
/* 80CB5A00  4E 80 00 20 */	blr 
