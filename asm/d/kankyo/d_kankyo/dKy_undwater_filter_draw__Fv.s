lbl_801A572C:
/* 801A572C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 801A5730  7C 08 02 A6 */	mflr r0
/* 801A5734  90 01 00 34 */	stw r0, 0x34(r1)
/* 801A5738  39 61 00 30 */	addi r11, r1, 0x30
/* 801A573C  48 1B CA 9D */	bl _savegpr_28
/* 801A5740  3C 60 80 43 */	lis r3, g_env_light-0xC@ha /* 0x8042CA48@ha */
/* 801A5744  3B E3 CA 48 */	addi r31, r3, g_env_light-0xC@l /* 0x8042CA48@l */
/* 801A5748  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 801A574C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 801A5750  83 A3 5D 74 */	lwz r29, 0x5d74(r3)
/* 801A5754  88 0D 8A EA */	lbz r0, struct_80451068+0x2(r13)
/* 801A5758  7C 00 07 75 */	extsb. r0, r0
/* 801A575C  40 82 00 30 */	bne lbl_801A578C
/* 801A5760  C0 02 A2 0C */	lfs f0, lit_4409(r2)
/* 801A5764  D0 1F 1D 80 */	stfs f0, 0x1d80(r31)
/* 801A5768  38 7F 1D 80 */	addi r3, r31, 0x1d80
/* 801A576C  D0 03 00 04 */	stfs f0, 4(r3)
/* 801A5770  D0 03 00 08 */	stfs f0, 8(r3)
/* 801A5774  3C 80 80 01 */	lis r4, __dt__4cXyzFv@ha /* 0x80009184@ha */
/* 801A5778  38 84 91 84 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80009184@l */
/* 801A577C  38 BF 1D 74 */	addi r5, r31, 0x1d74
/* 801A5780  48 1B C4 A5 */	bl __register_global_object
/* 801A5784  38 00 00 01 */	li r0, 1
/* 801A5788  98 0D 8A EA */	stb r0, struct_80451068+0x2(r13)
lbl_801A578C:
/* 801A578C  88 0D 8A EB */	lbz r0, struct_80451068+0x3(r13)
/* 801A5790  7C 00 07 75 */	extsb. r0, r0
/* 801A5794  40 82 00 30 */	bne lbl_801A57C4
/* 801A5798  C0 02 A2 0C */	lfs f0, lit_4409(r2)
/* 801A579C  D0 1F 1D 98 */	stfs f0, 0x1d98(r31)
/* 801A57A0  38 7F 1D 98 */	addi r3, r31, 0x1d98
/* 801A57A4  D0 03 00 04 */	stfs f0, 4(r3)
/* 801A57A8  D0 03 00 08 */	stfs f0, 8(r3)
/* 801A57AC  3C 80 80 01 */	lis r4, __dt__4cXyzFv@ha /* 0x80009184@ha */
/* 801A57B0  38 84 91 84 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80009184@l */
/* 801A57B4  38 BF 1D 8C */	addi r5, r31, 0x1d8c
/* 801A57B8  48 1B C4 6D */	bl __register_global_object
/* 801A57BC  38 00 00 01 */	li r0, 1
/* 801A57C0  98 0D 8A EB */	stb r0, struct_80451068+0x3(r13)
lbl_801A57C4:
/* 801A57C4  48 00 5A BD */	bl dKy_camera_water_in_status_check__Fv
/* 801A57C8  2C 03 00 00 */	cmpwi r3, 0
/* 801A57CC  41 82 03 88 */	beq lbl_801A5B54
/* 801A57D0  38 7D 00 D8 */	addi r3, r29, 0xd8
/* 801A57D4  38 9F 1D 80 */	addi r4, r31, 0x1d80
/* 801A57D8  48 1A 1B C5 */	bl PSVECSquareDistance
/* 801A57DC  C0 02 A2 0C */	lfs f0, lit_4409(r2)
/* 801A57E0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801A57E4  40 81 00 58 */	ble lbl_801A583C
/* 801A57E8  FC 00 08 34 */	frsqrte f0, f1
/* 801A57EC  C8 82 A2 10 */	lfd f4, lit_4410(r2)
/* 801A57F0  FC 44 00 32 */	fmul f2, f4, f0
/* 801A57F4  C8 62 A2 18 */	lfd f3, lit_4411(r2)
/* 801A57F8  FC 00 00 32 */	fmul f0, f0, f0
/* 801A57FC  FC 01 00 32 */	fmul f0, f1, f0
/* 801A5800  FC 03 00 28 */	fsub f0, f3, f0
/* 801A5804  FC 02 00 32 */	fmul f0, f2, f0
/* 801A5808  FC 44 00 32 */	fmul f2, f4, f0
/* 801A580C  FC 00 00 32 */	fmul f0, f0, f0
/* 801A5810  FC 01 00 32 */	fmul f0, f1, f0
/* 801A5814  FC 03 00 28 */	fsub f0, f3, f0
/* 801A5818  FC 02 00 32 */	fmul f0, f2, f0
/* 801A581C  FC 44 00 32 */	fmul f2, f4, f0
/* 801A5820  FC 00 00 32 */	fmul f0, f0, f0
/* 801A5824  FC 01 00 32 */	fmul f0, f1, f0
/* 801A5828  FC 03 00 28 */	fsub f0, f3, f0
/* 801A582C  FC 02 00 32 */	fmul f0, f2, f0
/* 801A5830  FC 21 00 32 */	fmul f1, f1, f0
/* 801A5834  FC 20 08 18 */	frsp f1, f1
/* 801A5838  48 00 00 88 */	b lbl_801A58C0
lbl_801A583C:
/* 801A583C  C8 02 A2 20 */	lfd f0, lit_4412(r2)
/* 801A5840  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801A5844  40 80 00 10 */	bge lbl_801A5854
/* 801A5848  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 801A584C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 801A5850  48 00 00 70 */	b lbl_801A58C0
lbl_801A5854:
/* 801A5854  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 801A5858  80 81 00 0C */	lwz r4, 0xc(r1)
/* 801A585C  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 801A5860  3C 00 7F 80 */	lis r0, 0x7f80
/* 801A5864  7C 03 00 00 */	cmpw r3, r0
/* 801A5868  41 82 00 14 */	beq lbl_801A587C
/* 801A586C  40 80 00 40 */	bge lbl_801A58AC
/* 801A5870  2C 03 00 00 */	cmpwi r3, 0
/* 801A5874  41 82 00 20 */	beq lbl_801A5894
/* 801A5878  48 00 00 34 */	b lbl_801A58AC
lbl_801A587C:
/* 801A587C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 801A5880  41 82 00 0C */	beq lbl_801A588C
/* 801A5884  38 00 00 01 */	li r0, 1
/* 801A5888  48 00 00 28 */	b lbl_801A58B0
lbl_801A588C:
/* 801A588C  38 00 00 02 */	li r0, 2
/* 801A5890  48 00 00 20 */	b lbl_801A58B0
lbl_801A5894:
/* 801A5894  54 80 02 7F */	clrlwi. r0, r4, 9
/* 801A5898  41 82 00 0C */	beq lbl_801A58A4
/* 801A589C  38 00 00 05 */	li r0, 5
/* 801A58A0  48 00 00 10 */	b lbl_801A58B0
lbl_801A58A4:
/* 801A58A4  38 00 00 03 */	li r0, 3
/* 801A58A8  48 00 00 08 */	b lbl_801A58B0
lbl_801A58AC:
/* 801A58AC  38 00 00 04 */	li r0, 4
lbl_801A58B0:
/* 801A58B0  2C 00 00 01 */	cmpwi r0, 1
/* 801A58B4  40 82 00 0C */	bne lbl_801A58C0
/* 801A58B8  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 801A58BC  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_801A58C0:
/* 801A58C0  C0 02 A2 94 */	lfs f0, lit_5192(r2)
/* 801A58C4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801A58C8  40 81 00 08 */	ble lbl_801A58D0
/* 801A58CC  FC 20 00 90 */	fmr f1, f0
lbl_801A58D0:
/* 801A58D0  3B DF 00 0C */	addi r30, r31, 0xc
/* 801A58D4  C4 7E 12 58 */	lfsu f3, 0x1258(r30)
/* 801A58D8  C0 42 A2 48 */	lfs f2, lit_4505(r2)
/* 801A58DC  C0 02 A2 94 */	lfs f0, lit_5192(r2)
/* 801A58E0  EC 01 00 24 */	fdivs f0, f1, f0
/* 801A58E4  EC 22 00 28 */	fsubs f1, f2, f0
/* 801A58E8  FC 03 08 40 */	fcmpo cr0, f3, f1
/* 801A58EC  40 81 00 18 */	ble lbl_801A5904
/* 801A58F0  7F C3 F3 78 */	mr r3, r30
/* 801A58F4  C0 42 A2 60 */	lfs f2, lit_4529(r2)
/* 801A58F8  C0 62 A3 08 */	lfs f3, lit_6040(r2)
/* 801A58FC  C0 82 A3 30 */	lfs f4, lit_6768(r2)
/* 801A5900  48 0C A0 7D */	bl cLib_addCalc__FPfffff
lbl_801A5904:
/* 801A5904  38 7D 00 E4 */	addi r3, r29, 0xe4
/* 801A5908  38 9F 1D 98 */	addi r4, r31, 0x1d98
/* 801A590C  48 1A 1A 91 */	bl PSVECSquareDistance
/* 801A5910  C0 02 A2 0C */	lfs f0, lit_4409(r2)
/* 801A5914  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801A5918  40 81 00 58 */	ble lbl_801A5970
/* 801A591C  FC 00 08 34 */	frsqrte f0, f1
/* 801A5920  C8 82 A2 10 */	lfd f4, lit_4410(r2)
/* 801A5924  FC 44 00 32 */	fmul f2, f4, f0
/* 801A5928  C8 62 A2 18 */	lfd f3, lit_4411(r2)
/* 801A592C  FC 00 00 32 */	fmul f0, f0, f0
/* 801A5930  FC 01 00 32 */	fmul f0, f1, f0
/* 801A5934  FC 03 00 28 */	fsub f0, f3, f0
/* 801A5938  FC 02 00 32 */	fmul f0, f2, f0
/* 801A593C  FC 44 00 32 */	fmul f2, f4, f0
/* 801A5940  FC 00 00 32 */	fmul f0, f0, f0
/* 801A5944  FC 01 00 32 */	fmul f0, f1, f0
/* 801A5948  FC 03 00 28 */	fsub f0, f3, f0
/* 801A594C  FC 02 00 32 */	fmul f0, f2, f0
/* 801A5950  FC 44 00 32 */	fmul f2, f4, f0
/* 801A5954  FC 00 00 32 */	fmul f0, f0, f0
/* 801A5958  FC 01 00 32 */	fmul f0, f1, f0
/* 801A595C  FC 03 00 28 */	fsub f0, f3, f0
/* 801A5960  FC 02 00 32 */	fmul f0, f2, f0
/* 801A5964  FC 21 00 32 */	fmul f1, f1, f0
/* 801A5968  FC 20 08 18 */	frsp f1, f1
/* 801A596C  48 00 00 88 */	b lbl_801A59F4
lbl_801A5970:
/* 801A5970  C8 02 A2 20 */	lfd f0, lit_4412(r2)
/* 801A5974  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801A5978  40 80 00 10 */	bge lbl_801A5988
/* 801A597C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 801A5980  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 801A5984  48 00 00 70 */	b lbl_801A59F4
lbl_801A5988:
/* 801A5988  D0 21 00 08 */	stfs f1, 8(r1)
/* 801A598C  80 81 00 08 */	lwz r4, 8(r1)
/* 801A5990  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 801A5994  3C 00 7F 80 */	lis r0, 0x7f80
/* 801A5998  7C 03 00 00 */	cmpw r3, r0
/* 801A599C  41 82 00 14 */	beq lbl_801A59B0
/* 801A59A0  40 80 00 40 */	bge lbl_801A59E0
/* 801A59A4  2C 03 00 00 */	cmpwi r3, 0
/* 801A59A8  41 82 00 20 */	beq lbl_801A59C8
/* 801A59AC  48 00 00 34 */	b lbl_801A59E0
lbl_801A59B0:
/* 801A59B0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 801A59B4  41 82 00 0C */	beq lbl_801A59C0
/* 801A59B8  38 00 00 01 */	li r0, 1
/* 801A59BC  48 00 00 28 */	b lbl_801A59E4
lbl_801A59C0:
/* 801A59C0  38 00 00 02 */	li r0, 2
/* 801A59C4  48 00 00 20 */	b lbl_801A59E4
lbl_801A59C8:
/* 801A59C8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 801A59CC  41 82 00 0C */	beq lbl_801A59D8
/* 801A59D0  38 00 00 05 */	li r0, 5
/* 801A59D4  48 00 00 10 */	b lbl_801A59E4
lbl_801A59D8:
/* 801A59D8  38 00 00 03 */	li r0, 3
/* 801A59DC  48 00 00 08 */	b lbl_801A59E4
lbl_801A59E0:
/* 801A59E0  38 00 00 04 */	li r0, 4
lbl_801A59E4:
/* 801A59E4  2C 00 00 01 */	cmpwi r0, 1
/* 801A59E8  40 82 00 0C */	bne lbl_801A59F4
/* 801A59EC  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 801A59F0  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_801A59F4:
/* 801A59F4  C0 02 A2 94 */	lfs f0, lit_5192(r2)
/* 801A59F8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801A59FC  40 81 00 08 */	ble lbl_801A5A04
/* 801A5A00  FC 20 00 90 */	fmr f1, f0
lbl_801A5A04:
/* 801A5A04  C0 7E 00 00 */	lfs f3, 0(r30)
/* 801A5A08  C0 42 A2 48 */	lfs f2, lit_4505(r2)
/* 801A5A0C  C0 02 A2 94 */	lfs f0, lit_5192(r2)
/* 801A5A10  EC 01 00 24 */	fdivs f0, f1, f0
/* 801A5A14  EC 22 00 28 */	fsubs f1, f2, f0
/* 801A5A18  FC 03 08 40 */	fcmpo cr0, f3, f1
/* 801A5A1C  40 81 00 18 */	ble lbl_801A5A34
/* 801A5A20  7F C3 F3 78 */	mr r3, r30
/* 801A5A24  C0 42 A2 60 */	lfs f2, lit_4529(r2)
/* 801A5A28  C0 62 A3 08 */	lfs f3, lit_6040(r2)
/* 801A5A2C  C0 82 A3 30 */	lfs f4, lit_6768(r2)
/* 801A5A30  48 0C 9F 4D */	bl cLib_addCalc__FPfffff
lbl_801A5A34:
/* 801A5A34  C0 1D 00 D8 */	lfs f0, 0xd8(r29)
/* 801A5A38  D0 1F 1D 80 */	stfs f0, 0x1d80(r31)
/* 801A5A3C  C0 1D 00 DC */	lfs f0, 0xdc(r29)
/* 801A5A40  38 7F 1D 80 */	addi r3, r31, 0x1d80
/* 801A5A44  D0 03 00 04 */	stfs f0, 4(r3)
/* 801A5A48  C0 1D 00 E0 */	lfs f0, 0xe0(r29)
/* 801A5A4C  D0 03 00 08 */	stfs f0, 8(r3)
/* 801A5A50  C0 1D 00 E4 */	lfs f0, 0xe4(r29)
/* 801A5A54  D0 1F 1D 98 */	stfs f0, 0x1d98(r31)
/* 801A5A58  C0 1D 00 E8 */	lfs f0, 0xe8(r29)
/* 801A5A5C  38 7F 1D 98 */	addi r3, r31, 0x1d98
/* 801A5A60  D0 03 00 04 */	stfs f0, 4(r3)
/* 801A5A64  C0 1D 00 EC */	lfs f0, 0xec(r29)
/* 801A5A68  D0 03 00 08 */	stfs f0, 8(r3)
/* 801A5A6C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 801A5A70  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 801A5A74  C0 22 A2 0C */	lfs f1, lit_4409(r2)
/* 801A5A78  FC 40 08 90 */	fmr f2, f1
/* 801A5A7C  FC 60 08 90 */	fmr f3, f1
/* 801A5A80  48 1A 0E 69 */	bl PSMTXTrans
/* 801A5A84  C0 02 A3 A0 */	lfs f0, lit_7608(r2)
/* 801A5A88  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 801A5A8C  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 801A5A90  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 801A5A94  3B 9F 00 0C */	addi r28, r31, 0xc
/* 801A5A98  80 7C 0F 30 */	lwz r3, 0xf30(r28)
/* 801A5A9C  28 03 00 00 */	cmplwi r3, 0
/* 801A5AA0  41 82 00 B4 */	beq lbl_801A5B54
/* 801A5AA4  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 801A5AA8  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 801A5AAC  D0 03 00 20 */	stfs f0, 0x20(r3)
/* 801A5AB0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 801A5AB4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 801A5AB8  80 9C 0F 30 */	lwz r4, 0xf30(r28)
/* 801A5ABC  38 84 00 24 */	addi r4, r4, 0x24
/* 801A5AC0  48 1A 09 F1 */	bl PSMTXCopy
/* 801A5AC4  7F 9D E3 78 */	mr r29, r28
/* 801A5AC8  80 7C 10 5C */	lwz r3, 0x105c(r28)
/* 801A5ACC  28 03 00 00 */	cmplwi r3, 0
/* 801A5AD0  41 82 00 84 */	beq lbl_801A5B54
/* 801A5AD4  C0 62 A2 4C */	lfs f3, lit_4506(r2)
/* 801A5AD8  C0 42 A3 A4 */	lfs f2, lit_7609(r2)
/* 801A5ADC  C0 22 A2 48 */	lfs f1, lit_4505(r2)
/* 801A5AE0  C0 1E 00 00 */	lfs f0, 0(r30)
/* 801A5AE4  EC 01 00 28 */	fsubs f0, f1, f0
/* 801A5AE8  EC 02 00 32 */	fmuls f0, f2, f0
/* 801A5AEC  EC 03 00 2A */	fadds f0, f3, f0
/* 801A5AF0  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 801A5AF4  80 7C 0F 30 */	lwz r3, 0xf30(r28)
/* 801A5AF8  80 83 00 04 */	lwz r4, 4(r3)
/* 801A5AFC  80 7D 10 5C */	lwz r3, 0x105c(r29)
/* 801A5B00  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 801A5B04  38 84 00 58 */	addi r4, r4, 0x58
/* 801A5B08  4B E6 7B D1 */	bl entry__13mDoExt_btkAnmFP16J3DMaterialTablef
/* 801A5B0C  80 7D 10 5C */	lwz r3, 0x105c(r29)
/* 801A5B10  4B E6 79 19 */	bl play__14mDoExt_baseAnmFv
/* 801A5B14  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 801A5B18  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 801A5B1C  80 03 5F AC */	lwz r0, 0x5fac(r3)
/* 801A5B20  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 801A5B24  3B A3 4A C8 */	addi r29, r3, j3dSys@l /* 0x80434AC8@l */
/* 801A5B28  90 1D 00 4C */	stw r0, 0x4c(r29)
/* 801A5B2C  80 7C 0F 30 */	lwz r3, 0xf30(r28)
/* 801A5B30  4B E6 81 95 */	bl mDoExt_modelUpdateDL__FP8J3DModel
/* 801A5B34  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 801A5B38  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 801A5B3C  80 04 5F 80 */	lwz r0, 0x5f80(r4)
/* 801A5B40  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 801A5B44  38 63 4A C8 */	addi r3, r3, j3dSys@l /* 0x80434AC8@l */
/* 801A5B48  90 03 00 48 */	stw r0, 0x48(r3)
/* 801A5B4C  80 04 5F 84 */	lwz r0, 0x5f84(r4)
/* 801A5B50  90 1D 00 4C */	stw r0, 0x4c(r29)
lbl_801A5B54:
/* 801A5B54  39 61 00 30 */	addi r11, r1, 0x30
/* 801A5B58  48 1B C6 CD */	bl _restgpr_28
/* 801A5B5C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 801A5B60  7C 08 03 A6 */	mtlr r0
/* 801A5B64  38 21 00 30 */	addi r1, r1, 0x30
/* 801A5B68  4E 80 00 20 */	blr 
