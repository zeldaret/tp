lbl_80BD5730:
/* 80BD5730  94 21 FF 50 */	stwu r1, -0xb0(r1)
/* 80BD5734  7C 08 02 A6 */	mflr r0
/* 80BD5738  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 80BD573C  39 61 00 B0 */	addi r11, r1, 0xb0
/* 80BD5740  4B 78 CA 9D */	bl _savegpr_29
/* 80BD5744  7C 7D 1B 78 */	mr r29, r3
/* 80BD5748  7C 9E 23 78 */	mr r30, r4
/* 80BD574C  3C 80 80 BD */	lis r4, lit_3672@ha /* 0x80BD59FC@ha */
/* 80BD5750  3B E4 59 FC */	addi r31, r4, lit_3672@l /* 0x80BD59FC@l */
/* 80BD5754  88 03 05 D4 */	lbz r0, 0x5d4(r3)
/* 80BD5758  28 00 00 00 */	cmplwi r0, 0
/* 80BD575C  41 82 00 08 */	beq lbl_80BD5764
/* 80BD5760  4B 44 45 1D */	bl fopAcM_delete__FP10fopAc_ac_c
lbl_80BD5764:
/* 80BD5764  88 1D 05 DA */	lbz r0, 0x5da(r29)
/* 80BD5768  28 00 00 00 */	cmplwi r0, 0
/* 80BD576C  40 82 00 24 */	bne lbl_80BD5790
/* 80BD5770  88 1D 05 DB */	lbz r0, 0x5db(r29)
/* 80BD5774  28 00 00 00 */	cmplwi r0, 0
/* 80BD5778  41 82 01 98 */	beq lbl_80BD5910
/* 80BD577C  7F A3 EB 78 */	mr r3, r29
/* 80BD5780  4B FF F8 59 */	bl Hakai__15daObjCRVLH_UP_cFv
/* 80BD5784  7F A3 EB 78 */	mr r3, r29
/* 80BD5788  4B FF F8 29 */	bl UpMotion__15daObjCRVLH_UP_cFv
/* 80BD578C  48 00 01 84 */	b lbl_80BD5910
lbl_80BD5790:
/* 80BD5790  80 7D 05 A4 */	lwz r3, 0x5a4(r29)
/* 80BD5794  38 81 00 0C */	addi r4, r1, 0xc
/* 80BD5798  4B 44 42 25 */	bl fopAcM_SearchByID__FUiPP10fopAc_ac_c
/* 80BD579C  2C 03 00 00 */	cmpwi r3, 0
/* 80BD57A0  41 82 01 70 */	beq lbl_80BD5910
/* 80BD57A4  80 7D 05 A8 */	lwz r3, 0x5a8(r29)
/* 80BD57A8  38 81 00 08 */	addi r4, r1, 8
/* 80BD57AC  4B 44 42 11 */	bl fopAcM_SearchByID__FUiPP10fopAc_ac_c
/* 80BD57B0  2C 03 00 00 */	cmpwi r3, 0
/* 80BD57B4  41 82 01 5C */	beq lbl_80BD5910
/* 80BD57B8  80 61 00 0C */	lwz r3, 0xc(r1)
/* 80BD57BC  28 03 00 00 */	cmplwi r3, 0
/* 80BD57C0  41 82 01 50 */	beq lbl_80BD5910
/* 80BD57C4  80 01 00 08 */	lwz r0, 8(r1)
/* 80BD57C8  28 00 00 00 */	cmplwi r0, 0
/* 80BD57CC  41 82 01 44 */	beq lbl_80BD5910
/* 80BD57D0  C0 DF 00 38 */	lfs f6, 0x38(r31)
/* 80BD57D4  D0 C1 00 94 */	stfs f6, 0x94(r1)
/* 80BD57D8  C0 BF 00 50 */	lfs f5, 0x50(r31)
/* 80BD57DC  D0 A1 00 98 */	stfs f5, 0x98(r1)
/* 80BD57E0  C0 9F 00 54 */	lfs f4, 0x54(r31)
/* 80BD57E4  D0 81 00 9C */	stfs f4, 0x9c(r1)
/* 80BD57E8  C0 7F 00 58 */	lfs f3, 0x58(r31)
/* 80BD57EC  D0 61 00 88 */	stfs f3, 0x88(r1)
/* 80BD57F0  D0 61 00 8C */	stfs f3, 0x8c(r1)
/* 80BD57F4  D0 61 00 90 */	stfs f3, 0x90(r1)
/* 80BD57F8  C0 5F 00 14 */	lfs f2, 0x14(r31)
/* 80BD57FC  D0 41 00 7C */	stfs f2, 0x7c(r1)
/* 80BD5800  C0 3F 00 5C */	lfs f1, 0x5c(r31)
/* 80BD5804  D0 21 00 80 */	stfs f1, 0x80(r1)
/* 80BD5808  D0 41 00 84 */	stfs f2, 0x84(r1)
/* 80BD580C  D0 21 00 70 */	stfs f1, 0x70(r1)
/* 80BD5810  C0 1F 00 60 */	lfs f0, 0x60(r31)
/* 80BD5814  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 80BD5818  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 80BD581C  D0 C1 00 64 */	stfs f6, 0x64(r1)
/* 80BD5820  D0 A1 00 68 */	stfs f5, 0x68(r1)
/* 80BD5824  D0 81 00 6C */	stfs f4, 0x6c(r1)
/* 80BD5828  D0 41 00 58 */	stfs f2, 0x58(r1)
/* 80BD582C  D0 21 00 5C */	stfs f1, 0x5c(r1)
/* 80BD5830  D0 41 00 60 */	stfs f2, 0x60(r1)
/* 80BD5834  D0 61 00 4C */	stfs f3, 0x4c(r1)
/* 80BD5838  D0 61 00 50 */	stfs f3, 0x50(r1)
/* 80BD583C  D0 61 00 54 */	stfs f3, 0x54(r1)
/* 80BD5840  D0 21 00 40 */	stfs f1, 0x40(r1)
/* 80BD5844  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80BD5848  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 80BD584C  38 81 00 64 */	addi r4, r1, 0x64
/* 80BD5850  38 A1 00 58 */	addi r5, r1, 0x58
/* 80BD5854  38 C1 00 4C */	addi r6, r1, 0x4c
/* 80BD5858  38 E1 00 40 */	addi r7, r1, 0x40
/* 80BD585C  C0 3F 00 64 */	lfs f1, 0x64(r31)
/* 80BD5860  4B FF DB CD */	bl HahenSet__15daObjCRVHAHEN_cF4cXyz4cXyz4cXyz4cXyzf
/* 80BD5864  C0 7F 00 38 */	lfs f3, 0x38(r31)
/* 80BD5868  D0 61 00 94 */	stfs f3, 0x94(r1)
/* 80BD586C  C0 5F 00 50 */	lfs f2, 0x50(r31)
/* 80BD5870  D0 41 00 98 */	stfs f2, 0x98(r1)
/* 80BD5874  C0 1F 00 54 */	lfs f0, 0x54(r31)
/* 80BD5878  D0 01 00 9C */	stfs f0, 0x9c(r1)
/* 80BD587C  C0 3F 00 58 */	lfs f1, 0x58(r31)
/* 80BD5880  D0 21 00 88 */	stfs f1, 0x88(r1)
/* 80BD5884  D0 21 00 8C */	stfs f1, 0x8c(r1)
/* 80BD5888  D0 21 00 90 */	stfs f1, 0x90(r1)
/* 80BD588C  D0 61 00 94 */	stfs f3, 0x94(r1)
/* 80BD5890  D0 41 00 98 */	stfs f2, 0x98(r1)
/* 80BD5894  D0 01 00 9C */	stfs f0, 0x9c(r1)
/* 80BD5898  D0 21 00 88 */	stfs f1, 0x88(r1)
/* 80BD589C  D0 21 00 8C */	stfs f1, 0x8c(r1)
/* 80BD58A0  D0 21 00 90 */	stfs f1, 0x90(r1)
/* 80BD58A4  D0 61 00 34 */	stfs f3, 0x34(r1)
/* 80BD58A8  D0 41 00 38 */	stfs f2, 0x38(r1)
/* 80BD58AC  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80BD58B0  C0 01 00 7C */	lfs f0, 0x7c(r1)
/* 80BD58B4  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80BD58B8  C0 01 00 80 */	lfs f0, 0x80(r1)
/* 80BD58BC  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80BD58C0  C0 01 00 84 */	lfs f0, 0x84(r1)
/* 80BD58C4  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80BD58C8  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 80BD58CC  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 80BD58D0  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 80BD58D4  C0 01 00 70 */	lfs f0, 0x70(r1)
/* 80BD58D8  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80BD58DC  C0 01 00 74 */	lfs f0, 0x74(r1)
/* 80BD58E0  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80BD58E4  C0 01 00 78 */	lfs f0, 0x78(r1)
/* 80BD58E8  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80BD58EC  80 61 00 08 */	lwz r3, 8(r1)
/* 80BD58F0  38 81 00 34 */	addi r4, r1, 0x34
/* 80BD58F4  38 A1 00 28 */	addi r5, r1, 0x28
/* 80BD58F8  38 C1 00 1C */	addi r6, r1, 0x1c
/* 80BD58FC  38 E1 00 10 */	addi r7, r1, 0x10
/* 80BD5900  C0 3F 00 64 */	lfs f1, 0x64(r31)
/* 80BD5904  4B FF DB 29 */	bl HahenSet__15daObjCRVHAHEN_cF4cXyz4cXyz4cXyz4cXyzf
/* 80BD5908  38 00 00 01 */	li r0, 1
/* 80BD590C  98 1D 05 D4 */	stb r0, 0x5d4(r29)
lbl_80BD5910:
/* 80BD5910  38 1D 05 6C */	addi r0, r29, 0x56c
/* 80BD5914  90 1E 00 00 */	stw r0, 0(r30)
/* 80BD5918  7F A3 EB 78 */	mr r3, r29
/* 80BD591C  4B FF F9 39 */	bl setBaseMtx__15daObjCRVLH_UP_cFv
/* 80BD5920  38 60 00 01 */	li r3, 1
/* 80BD5924  39 61 00 B0 */	addi r11, r1, 0xb0
/* 80BD5928  4B 78 C9 01 */	bl _restgpr_29
/* 80BD592C  80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 80BD5930  7C 08 03 A6 */	mtlr r0
/* 80BD5934  38 21 00 B0 */	addi r1, r1, 0xb0
/* 80BD5938  4E 80 00 20 */	blr 
