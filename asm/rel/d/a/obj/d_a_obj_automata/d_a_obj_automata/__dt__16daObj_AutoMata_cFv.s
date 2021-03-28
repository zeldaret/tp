lbl_80BA56EC:
/* 80BA56EC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BA56F0  7C 08 02 A6 */	mflr r0
/* 80BA56F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BA56F8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BA56FC  93 C1 00 08 */	stw r30, 8(r1)
/* 80BA5700  7C 7E 1B 79 */	or. r30, r3, r3
/* 80BA5704  7C 9F 23 78 */	mr r31, r4
/* 80BA5708  41 82 02 6C */	beq lbl_80BA5974
/* 80BA570C  3C 60 80 BA */	lis r3, __vt__16daObj_AutoMata_c@ha
/* 80BA5710  38 03 6E 2C */	addi r0, r3, __vt__16daObj_AutoMata_c@l
/* 80BA5714  90 1E 0B 34 */	stw r0, 0xb34(r30)
/* 80BA5718  80 7E 05 6C */	lwz r3, 0x56c(r30)
/* 80BA571C  28 03 00 00 */	cmplwi r3, 0
/* 80BA5720  41 82 00 08 */	beq lbl_80BA5728
/* 80BA5724  4B 46 BB EC */	b stopZelAnime__16mDoExt_McaMorfSOFv
lbl_80BA5728:
/* 80BA5728  38 7E 06 18 */	addi r3, r30, 0x618
/* 80BA572C  3C 80 80 BA */	lis r4, l_bmdData@ha
/* 80BA5730  38 84 6C D0 */	addi r4, r4, l_bmdData@l
/* 80BA5734  88 1E 0B 30 */	lbz r0, 0xb30(r30)
/* 80BA5738  54 00 18 38 */	slwi r0, r0, 3
/* 80BA573C  7C 84 02 14 */	add r4, r4, r0
/* 80BA5740  80 04 00 04 */	lwz r0, 4(r4)
/* 80BA5744  54 00 10 3A */	slwi r0, r0, 2
/* 80BA5748  3C 80 80 BA */	lis r4, l_resNameList@ha
/* 80BA574C  38 84 6C D8 */	addi r4, r4, l_resNameList@l
/* 80BA5750  7C 84 00 2E */	lwzx r4, r4, r0
/* 80BA5754  4B 48 78 B4 */	b dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80BA5758  34 1E 09 EC */	addic. r0, r30, 0x9ec
/* 80BA575C  41 82 00 84 */	beq lbl_80BA57E0
/* 80BA5760  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha
/* 80BA5764  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l
/* 80BA5768  90 7E 0A 28 */	stw r3, 0xa28(r30)
/* 80BA576C  38 03 00 2C */	addi r0, r3, 0x2c
/* 80BA5770  90 1E 0B 0C */	stw r0, 0xb0c(r30)
/* 80BA5774  38 03 00 84 */	addi r0, r3, 0x84
/* 80BA5778  90 1E 0B 20 */	stw r0, 0xb20(r30)
/* 80BA577C  34 1E 0A F0 */	addic. r0, r30, 0xaf0
/* 80BA5780  41 82 00 54 */	beq lbl_80BA57D4
/* 80BA5784  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha
/* 80BA5788  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l
/* 80BA578C  90 7E 0B 0C */	stw r3, 0xb0c(r30)
/* 80BA5790  38 03 00 58 */	addi r0, r3, 0x58
/* 80BA5794  90 1E 0B 20 */	stw r0, 0xb20(r30)
/* 80BA5798  34 1E 0B 10 */	addic. r0, r30, 0xb10
/* 80BA579C  41 82 00 10 */	beq lbl_80BA57AC
/* 80BA57A0  3C 60 80 BA */	lis r3, __vt__8cM3dGSph@ha
/* 80BA57A4  38 03 6E 20 */	addi r0, r3, __vt__8cM3dGSph@l
/* 80BA57A8  90 1E 0B 20 */	stw r0, 0xb20(r30)
lbl_80BA57AC:
/* 80BA57AC  34 1E 0A F0 */	addic. r0, r30, 0xaf0
/* 80BA57B0  41 82 00 24 */	beq lbl_80BA57D4
/* 80BA57B4  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 80BA57B8  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 80BA57BC  90 1E 0B 0C */	stw r0, 0xb0c(r30)
/* 80BA57C0  34 1E 0A F0 */	addic. r0, r30, 0xaf0
/* 80BA57C4  41 82 00 10 */	beq lbl_80BA57D4
/* 80BA57C8  3C 60 80 BA */	lis r3, __vt__8cM3dGAab@ha
/* 80BA57CC  38 03 6E 14 */	addi r0, r3, __vt__8cM3dGAab@l
/* 80BA57D0  90 1E 0B 08 */	stw r0, 0xb08(r30)
lbl_80BA57D4:
/* 80BA57D4  38 7E 09 EC */	addi r3, r30, 0x9ec
/* 80BA57D8  38 80 00 00 */	li r4, 0
/* 80BA57DC  4B 4D E9 08 */	b __dt__12dCcD_GObjInfFv
lbl_80BA57E0:
/* 80BA57E0  34 1E 08 B0 */	addic. r0, r30, 0x8b0
/* 80BA57E4  41 82 00 84 */	beq lbl_80BA5868
/* 80BA57E8  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha
/* 80BA57EC  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l
/* 80BA57F0  90 7E 08 EC */	stw r3, 0x8ec(r30)
/* 80BA57F4  38 03 00 2C */	addi r0, r3, 0x2c
/* 80BA57F8  90 1E 09 D0 */	stw r0, 0x9d0(r30)
/* 80BA57FC  38 03 00 84 */	addi r0, r3, 0x84
/* 80BA5800  90 1E 09 E8 */	stw r0, 0x9e8(r30)
/* 80BA5804  34 1E 09 B4 */	addic. r0, r30, 0x9b4
/* 80BA5808  41 82 00 54 */	beq lbl_80BA585C
/* 80BA580C  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha
/* 80BA5810  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l
/* 80BA5814  90 7E 09 D0 */	stw r3, 0x9d0(r30)
/* 80BA5818  38 03 00 58 */	addi r0, r3, 0x58
/* 80BA581C  90 1E 09 E8 */	stw r0, 0x9e8(r30)
/* 80BA5820  34 1E 09 D4 */	addic. r0, r30, 0x9d4
/* 80BA5824  41 82 00 10 */	beq lbl_80BA5834
/* 80BA5828  3C 60 80 BA */	lis r3, __vt__8cM3dGCyl@ha
/* 80BA582C  38 03 6E 08 */	addi r0, r3, __vt__8cM3dGCyl@l
/* 80BA5830  90 1E 09 E8 */	stw r0, 0x9e8(r30)
lbl_80BA5834:
/* 80BA5834  34 1E 09 B4 */	addic. r0, r30, 0x9b4
/* 80BA5838  41 82 00 24 */	beq lbl_80BA585C
/* 80BA583C  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 80BA5840  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 80BA5844  90 1E 09 D0 */	stw r0, 0x9d0(r30)
/* 80BA5848  34 1E 09 B4 */	addic. r0, r30, 0x9b4
/* 80BA584C  41 82 00 10 */	beq lbl_80BA585C
/* 80BA5850  3C 60 80 BA */	lis r3, __vt__8cM3dGAab@ha
/* 80BA5854  38 03 6E 14 */	addi r0, r3, __vt__8cM3dGAab@l
/* 80BA5858  90 1E 09 CC */	stw r0, 0x9cc(r30)
lbl_80BA585C:
/* 80BA585C  38 7E 08 B0 */	addi r3, r30, 0x8b0
/* 80BA5860  38 80 00 00 */	li r4, 0
/* 80BA5864  4B 4D E8 80 */	b __dt__12dCcD_GObjInfFv
lbl_80BA5868:
/* 80BA5868  38 7E 08 74 */	addi r3, r30, 0x874
/* 80BA586C  38 80 FF FF */	li r4, -1
/* 80BA5870  4B 6C 24 24 */	b __dt__11cBgS_GndChkFv
/* 80BA5874  34 1E 08 34 */	addic. r0, r30, 0x834
/* 80BA5878  41 82 00 28 */	beq lbl_80BA58A0
/* 80BA587C  3C 60 80 BA */	lis r3, __vt__12dBgS_AcchCir@ha
/* 80BA5880  38 03 6D FC */	addi r0, r3, __vt__12dBgS_AcchCir@l
/* 80BA5884  90 1E 08 40 */	stw r0, 0x840(r30)
/* 80BA5888  38 7E 08 48 */	addi r3, r30, 0x848
/* 80BA588C  38 80 FF FF */	li r4, -1
/* 80BA5890  4B 6C 96 88 */	b __dt__8cM3dGCirFv
/* 80BA5894  38 7E 08 34 */	addi r3, r30, 0x834
/* 80BA5898  38 80 00 00 */	li r4, 0
/* 80BA589C  4B 6C 28 14 */	b __dt__13cBgS_PolyInfoFv
lbl_80BA58A0:
/* 80BA58A0  34 1E 07 F8 */	addic. r0, r30, 0x7f8
/* 80BA58A4  41 82 00 54 */	beq lbl_80BA58F8
/* 80BA58A8  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 80BA58AC  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 80BA58B0  90 7E 08 10 */	stw r3, 0x810(r30)
/* 80BA58B4  38 03 00 20 */	addi r0, r3, 0x20
/* 80BA58B8  90 1E 08 14 */	stw r0, 0x814(r30)
/* 80BA58BC  34 1E 08 14 */	addic. r0, r30, 0x814
/* 80BA58C0  41 82 00 24 */	beq lbl_80BA58E4
/* 80BA58C4  3C 60 80 BA */	lis r3, __vt__10dCcD_GStts@ha
/* 80BA58C8  38 03 6D F0 */	addi r0, r3, __vt__10dCcD_GStts@l
/* 80BA58CC  90 1E 08 14 */	stw r0, 0x814(r30)
/* 80BA58D0  34 1E 08 14 */	addic. r0, r30, 0x814
/* 80BA58D4  41 82 00 10 */	beq lbl_80BA58E4
/* 80BA58D8  3C 60 80 BA */	lis r3, __vt__10cCcD_GStts@ha
/* 80BA58DC  38 03 6D E4 */	addi r0, r3, __vt__10cCcD_GStts@l
/* 80BA58E0  90 1E 08 14 */	stw r0, 0x814(r30)
lbl_80BA58E4:
/* 80BA58E4  34 1E 07 F8 */	addic. r0, r30, 0x7f8
/* 80BA58E8  41 82 00 10 */	beq lbl_80BA58F8
/* 80BA58EC  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 80BA58F0  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 80BA58F4  90 1E 08 10 */	stw r0, 0x810(r30)
lbl_80BA58F8:
/* 80BA58F8  34 1E 06 20 */	addic. r0, r30, 0x620
/* 80BA58FC  41 82 00 2C */	beq lbl_80BA5928
/* 80BA5900  3C 60 80 BA */	lis r3, __vt__12dBgS_ObjAcch@ha
/* 80BA5904  38 63 6D C0 */	addi r3, r3, __vt__12dBgS_ObjAcch@l
/* 80BA5908  90 7E 06 30 */	stw r3, 0x630(r30)
/* 80BA590C  38 03 00 0C */	addi r0, r3, 0xc
/* 80BA5910  90 1E 06 34 */	stw r0, 0x634(r30)
/* 80BA5914  38 03 00 18 */	addi r0, r3, 0x18
/* 80BA5918  90 1E 06 44 */	stw r0, 0x644(r30)
/* 80BA591C  38 7E 06 20 */	addi r3, r30, 0x620
/* 80BA5920  38 80 00 00 */	li r4, 0
/* 80BA5924  4B 4D 06 70 */	b __dt__9dBgS_AcchFv
lbl_80BA5928:
/* 80BA5928  34 1E 06 00 */	addic. r0, r30, 0x600
/* 80BA592C  41 82 00 20 */	beq lbl_80BA594C
/* 80BA5930  34 1E 06 00 */	addic. r0, r30, 0x600
/* 80BA5934  41 82 00 18 */	beq lbl_80BA594C
/* 80BA5938  34 1E 06 00 */	addic. r0, r30, 0x600
/* 80BA593C  41 82 00 10 */	beq lbl_80BA594C
/* 80BA5940  3C 60 80 BA */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80BA5944  38 03 6D B4 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80BA5948  90 1E 06 00 */	stw r0, 0x600(r30)
lbl_80BA594C:
/* 80BA594C  38 7E 05 70 */	addi r3, r30, 0x570
/* 80BA5950  38 80 FF FF */	li r4, -1
/* 80BA5954  4B 71 AA CC */	b __dt__10Z2CreatureFv
/* 80BA5958  7F C3 F3 78 */	mr r3, r30
/* 80BA595C  38 80 00 00 */	li r4, 0
/* 80BA5960  4B 47 33 2C */	b __dt__10fopAc_ac_cFv
/* 80BA5964  7F E0 07 35 */	extsh. r0, r31
/* 80BA5968  40 81 00 0C */	ble lbl_80BA5974
/* 80BA596C  7F C3 F3 78 */	mr r3, r30
/* 80BA5970  4B 72 93 CC */	b __dl__FPv
lbl_80BA5974:
/* 80BA5974  7F C3 F3 78 */	mr r3, r30
/* 80BA5978  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BA597C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80BA5980  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BA5984  7C 08 03 A6 */	mtlr r0
/* 80BA5988  38 21 00 10 */	addi r1, r1, 0x10
/* 80BA598C  4E 80 00 20 */	blr 
