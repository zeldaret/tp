lbl_80AF65FC:
/* 80AF65FC  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80AF6600  7C 08 02 A6 */	mflr r0
/* 80AF6604  90 01 00 54 */	stw r0, 0x54(r1)
/* 80AF6608  39 61 00 50 */	addi r11, r1, 0x50
/* 80AF660C  4B 86 BB C9 */	bl _savegpr_27
/* 80AF6610  7C 7D 1B 78 */	mr r29, r3
/* 80AF6614  3C 80 80 AF */	lis r4, lit_3768@ha /* 0x80AF7408@ha */
/* 80AF6618  3B E4 74 08 */	addi r31, r4, lit_3768@l /* 0x80AF7408@l */
/* 80AF661C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80AF6620  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80AF6624  88 04 5D B0 */	lbz r0, 0x5db0(r4)
/* 80AF6628  7C 00 07 74 */	extsb r0, r0
/* 80AF662C  38 84 5D 74 */	addi r4, r4, 0x5d74
/* 80AF6630  1C 00 00 38 */	mulli r0, r0, 0x38
/* 80AF6634  7F C4 00 2E */	lwzx r30, r4, r0
/* 80AF6638  83 64 00 00 */	lwz r27, 0(r4)
/* 80AF663C  3B 80 00 00 */	li r28, 0
/* 80AF6640  A8 03 09 EC */	lha r0, 0x9ec(r3)
/* 80AF6644  28 00 00 09 */	cmplwi r0, 9
/* 80AF6648  41 81 04 64 */	bgt lbl_80AF6AAC
/* 80AF664C  3C 80 80 AF */	lis r4, lit_4052@ha /* 0x80AF74A8@ha */
/* 80AF6650  38 84 74 A8 */	addi r4, r4, lit_4052@l /* 0x80AF74A8@l */
/* 80AF6654  54 00 10 3A */	slwi r0, r0, 2
/* 80AF6658  7C 04 00 2E */	lwzx r0, r4, r0
/* 80AF665C  7C 09 03 A6 */	mtctr r0
/* 80AF6660  4E 80 04 20 */	bctr 
lbl_80AF6664:
/* 80AF6664  A0 1D 00 F8 */	lhz r0, 0xf8(r29)
/* 80AF6668  28 00 00 02 */	cmplwi r0, 2
/* 80AF666C  41 82 00 28 */	beq lbl_80AF6694
/* 80AF6670  38 80 00 02 */	li r4, 2
/* 80AF6674  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000FFFF@ha */
/* 80AF6678  38 A5 FF FF */	addi r5, r5, 0xFFFF /* 0x0000FFFF@l */
/* 80AF667C  38 C0 00 00 */	li r6, 0
/* 80AF6680  4B 52 52 89 */	bl fopAcM_orderPotentialEvent__FP10fopAc_ac_cUsUsUs
/* 80AF6684  A0 1D 00 FA */	lhz r0, 0xfa(r29)
/* 80AF6688  60 00 00 02 */	ori r0, r0, 2
/* 80AF668C  B0 1D 00 FA */	sth r0, 0xfa(r29)
/* 80AF6690  48 00 04 CC */	b lbl_80AF6B5C
lbl_80AF6694:
/* 80AF6694  38 7E 02 48 */	addi r3, r30, 0x248
/* 80AF6698  4B 66 AE 39 */	bl Stop__9dCamera_cFv
/* 80AF669C  38 00 00 02 */	li r0, 2
/* 80AF66A0  B0 1D 09 EC */	sth r0, 0x9ec(r29)
/* 80AF66A4  38 00 00 00 */	li r0, 0
/* 80AF66A8  B0 1D 09 EE */	sth r0, 0x9ee(r29)
/* 80AF66AC  C0 1F 00 54 */	lfs f0, 0x54(r31)
/* 80AF66B0  D0 1D 0A 38 */	stfs f0, 0xa38(r29)
/* 80AF66B4  38 7E 02 48 */	addi r3, r30, 0x248
/* 80AF66B8  38 80 00 03 */	li r4, 3
/* 80AF66BC  4B 66 C9 51 */	bl SetTrimSize__9dCamera_cFl
/* 80AF66C0  38 7D 05 BC */	addi r3, r29, 0x5bc
/* 80AF66C4  7F A4 EB 78 */	mr r4, r29
/* 80AF66C8  A8 BD 05 B8 */	lha r5, 0x5b8(r29)
/* 80AF66CC  38 C0 00 00 */	li r6, 0
/* 80AF66D0  38 E0 00 00 */	li r7, 0
/* 80AF66D4  4B 75 38 BD */	bl init__10dMsgFlow_cFP10fopAc_ac_ciiPP10fopAc_ac_c
/* 80AF66D8  C0 1B 00 D8 */	lfs f0, 0xd8(r27)
/* 80AF66DC  D0 1D 09 F0 */	stfs f0, 0x9f0(r29)
/* 80AF66E0  C0 1B 00 DC */	lfs f0, 0xdc(r27)
/* 80AF66E4  D0 1D 09 F4 */	stfs f0, 0x9f4(r29)
/* 80AF66E8  C0 1B 00 E0 */	lfs f0, 0xe0(r27)
/* 80AF66EC  D0 1D 09 F8 */	stfs f0, 0x9f8(r29)
/* 80AF66F0  C0 1B 00 E4 */	lfs f0, 0xe4(r27)
/* 80AF66F4  D0 1D 09 FC */	stfs f0, 0x9fc(r29)
/* 80AF66F8  C0 1B 00 E8 */	lfs f0, 0xe8(r27)
/* 80AF66FC  D0 1D 0A 00 */	stfs f0, 0xa00(r29)
/* 80AF6700  C0 1B 00 EC */	lfs f0, 0xec(r27)
/* 80AF6704  D0 1D 0A 04 */	stfs f0, 0xa04(r29)
/* 80AF6708  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80AF670C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80AF6710  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 80AF6714  38 00 00 03 */	li r0, 3
/* 80AF6718  B0 03 06 04 */	sth r0, 0x604(r3)
/* 80AF671C  38 00 00 00 */	li r0, 0
/* 80AF6720  90 03 06 0C */	stw r0, 0x60c(r3)
lbl_80AF6724:
/* 80AF6724  A8 1D 09 EE */	lha r0, 0x9ee(r29)
/* 80AF6728  2C 00 00 0A */	cmpwi r0, 0xa
/* 80AF672C  40 82 00 28 */	bne lbl_80AF6754
/* 80AF6730  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80AF6734  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80AF6738  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 80AF673C  38 00 00 17 */	li r0, 0x17
/* 80AF6740  90 03 06 14 */	stw r0, 0x614(r3)
/* 80AF6744  38 00 00 00 */	li r0, 0
/* 80AF6748  90 03 06 0C */	stw r0, 0x60c(r3)
/* 80AF674C  90 03 06 10 */	stw r0, 0x610(r3)
/* 80AF6750  B0 03 06 0A */	sth r0, 0x60a(r3)
lbl_80AF6754:
/* 80AF6754  38 7D 05 BC */	addi r3, r29, 0x5bc
/* 80AF6758  7F A4 EB 78 */	mr r4, r29
/* 80AF675C  38 A0 00 00 */	li r5, 0
/* 80AF6760  38 C0 00 00 */	li r6, 0
/* 80AF6764  4B 75 3B 75 */	bl doFlow__10dMsgFlow_cFP10fopAc_ac_cPP10fopAc_ac_ci
/* 80AF6768  2C 03 00 00 */	cmpwi r3, 0
/* 80AF676C  41 82 03 40 */	beq lbl_80AF6AAC
/* 80AF6770  38 00 00 03 */	li r0, 3
/* 80AF6774  B0 1D 09 EC */	sth r0, 0x9ec(r29)
/* 80AF6778  38 00 00 00 */	li r0, 0
/* 80AF677C  B0 1D 09 EE */	sth r0, 0x9ee(r29)
/* 80AF6780  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80AF6784  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80AF6788  A8 9D 04 E6 */	lha r4, 0x4e6(r29)
/* 80AF678C  4B 51 5C 51 */	bl mDoMtx_YrotS__FPA4_fs
/* 80AF6790  C0 1F 00 58 */	lfs f0, 0x58(r31)
/* 80AF6794  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80AF6798  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 80AF679C  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80AF67A0  C0 1F 00 5C */	lfs f0, 0x5c(r31)
/* 80AF67A4  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80AF67A8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80AF67AC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80AF67B0  38 81 00 20 */	addi r4, r1, 0x20
/* 80AF67B4  38 BD 0A 08 */	addi r5, r29, 0xa08
/* 80AF67B8  4B 85 05 B5 */	bl PSMTXMultVec
/* 80AF67BC  38 7D 0A 08 */	addi r3, r29, 0xa08
/* 80AF67C0  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 80AF67C4  7C 65 1B 78 */	mr r5, r3
/* 80AF67C8  4B 85 08 C9 */	bl PSVECAdd
/* 80AF67CC  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 80AF67D0  D0 1D 0A 14 */	stfs f0, 0xa14(r29)
/* 80AF67D4  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 80AF67D8  D0 1D 0A 18 */	stfs f0, 0xa18(r29)
/* 80AF67DC  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 80AF67E0  D0 1D 0A 1C */	stfs f0, 0xa1c(r29)
/* 80AF67E4  C0 3D 0A 18 */	lfs f1, 0xa18(r29)
/* 80AF67E8  C0 1F 00 60 */	lfs f0, 0x60(r31)
/* 80AF67EC  EC 01 00 2A */	fadds f0, f1, f0
/* 80AF67F0  D0 1D 0A 18 */	stfs f0, 0xa18(r29)
/* 80AF67F4  C0 3D 0A 08 */	lfs f1, 0xa08(r29)
/* 80AF67F8  C0 1D 09 F0 */	lfs f0, 0x9f0(r29)
/* 80AF67FC  EC 01 00 28 */	fsubs f0, f1, f0
/* 80AF6800  FC 00 02 10 */	fabs f0, f0
/* 80AF6804  FC 00 00 18 */	frsp f0, f0
/* 80AF6808  D0 1D 0A 20 */	stfs f0, 0xa20(r29)
/* 80AF680C  C0 3D 0A 0C */	lfs f1, 0xa0c(r29)
/* 80AF6810  C0 1D 09 F4 */	lfs f0, 0x9f4(r29)
/* 80AF6814  EC 01 00 28 */	fsubs f0, f1, f0
/* 80AF6818  FC 00 02 10 */	fabs f0, f0
/* 80AF681C  FC 00 00 18 */	frsp f0, f0
/* 80AF6820  D0 1D 0A 24 */	stfs f0, 0xa24(r29)
/* 80AF6824  C0 3D 0A 10 */	lfs f1, 0xa10(r29)
/* 80AF6828  C0 1D 09 F8 */	lfs f0, 0x9f8(r29)
/* 80AF682C  EC 01 00 28 */	fsubs f0, f1, f0
/* 80AF6830  FC 00 02 10 */	fabs f0, f0
/* 80AF6834  FC 00 00 18 */	frsp f0, f0
/* 80AF6838  D0 1D 0A 28 */	stfs f0, 0xa28(r29)
/* 80AF683C  C0 3D 0A 14 */	lfs f1, 0xa14(r29)
/* 80AF6840  C0 1D 09 FC */	lfs f0, 0x9fc(r29)
/* 80AF6844  EC 01 00 28 */	fsubs f0, f1, f0
/* 80AF6848  FC 00 02 10 */	fabs f0, f0
/* 80AF684C  FC 00 00 18 */	frsp f0, f0
/* 80AF6850  D0 1D 0A 2C */	stfs f0, 0xa2c(r29)
/* 80AF6854  C0 3D 0A 18 */	lfs f1, 0xa18(r29)
/* 80AF6858  C0 1D 0A 00 */	lfs f0, 0xa00(r29)
/* 80AF685C  EC 01 00 28 */	fsubs f0, f1, f0
/* 80AF6860  FC 00 02 10 */	fabs f0, f0
/* 80AF6864  FC 00 00 18 */	frsp f0, f0
/* 80AF6868  D0 1D 0A 30 */	stfs f0, 0xa30(r29)
/* 80AF686C  C0 3D 0A 1C */	lfs f1, 0xa1c(r29)
/* 80AF6870  C0 1D 0A 04 */	lfs f0, 0xa04(r29)
/* 80AF6874  EC 01 00 28 */	fsubs f0, f1, f0
/* 80AF6878  FC 00 02 10 */	fabs f0, f0
/* 80AF687C  FC 00 00 18 */	frsp f0, f0
/* 80AF6880  D0 1D 0A 34 */	stfs f0, 0xa34(r29)
/* 80AF6884  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80AF6888  D0 1D 0A 3C */	stfs f0, 0xa3c(r29)
/* 80AF688C  48 00 02 20 */	b lbl_80AF6AAC
lbl_80AF6890:
/* 80AF6890  C0 3F 00 64 */	lfs f1, 0x64(r31)
/* 80AF6894  4B FF FC 85 */	bl cam_3d_morf__FP12npc_sq_classf
/* 80AF6898  38 7D 0A 3C */	addi r3, r29, 0xa3c
/* 80AF689C  C0 3F 00 68 */	lfs f1, 0x68(r31)
/* 80AF68A0  C0 5F 00 18 */	lfs f2, 0x18(r31)
/* 80AF68A4  C0 7F 00 6C */	lfs f3, 0x6c(r31)
/* 80AF68A8  4B 77 91 95 */	bl cLib_addCalc2__FPffff
/* 80AF68AC  A8 1D 09 EE */	lha r0, 0x9ee(r29)
/* 80AF68B0  2C 00 00 50 */	cmpwi r0, 0x50
/* 80AF68B4  40 82 01 F8 */	bne lbl_80AF6AAC
/* 80AF68B8  38 7D 05 BC */	addi r3, r29, 0x5bc
/* 80AF68BC  7F A4 EB 78 */	mr r4, r29
/* 80AF68C0  A8 BD 05 B8 */	lha r5, 0x5b8(r29)
/* 80AF68C4  38 C0 00 00 */	li r6, 0
/* 80AF68C8  38 E0 00 00 */	li r7, 0
/* 80AF68CC  4B 75 36 C5 */	bl init__10dMsgFlow_cFP10fopAc_ac_ciiPP10fopAc_ac_c
/* 80AF68D0  38 00 00 04 */	li r0, 4
/* 80AF68D4  B0 1D 09 EC */	sth r0, 0x9ec(r29)
/* 80AF68D8  48 00 01 D4 */	b lbl_80AF6AAC
lbl_80AF68DC:
/* 80AF68DC  38 7D 05 BC */	addi r3, r29, 0x5bc
/* 80AF68E0  7F A4 EB 78 */	mr r4, r29
/* 80AF68E4  38 A0 00 00 */	li r5, 0
/* 80AF68E8  38 C0 00 00 */	li r6, 0
/* 80AF68EC  4B 75 39 ED */	bl doFlow__10dMsgFlow_cFP10fopAc_ac_cPP10fopAc_ac_ci
/* 80AF68F0  38 7D 05 BC */	addi r3, r29, 0x5bc
/* 80AF68F4  4B 75 3C 4D */	bl getNowMsgNo__10dMsgFlow_cFv
/* 80AF68F8  28 03 27 47 */	cmplwi r3, 0x2747
/* 80AF68FC  41 82 00 14 */	beq lbl_80AF6910
/* 80AF6900  38 7D 05 BC */	addi r3, r29, 0x5bc
/* 80AF6904  4B 75 3C 3D */	bl getNowMsgNo__10dMsgFlow_cFv
/* 80AF6908  28 03 27 3E */	cmplwi r3, 0x273e
/* 80AF690C  40 82 01 A0 */	bne lbl_80AF6AAC
lbl_80AF6910:
/* 80AF6910  38 00 00 05 */	li r0, 5
/* 80AF6914  B0 1D 09 EC */	sth r0, 0x9ec(r29)
/* 80AF6918  7F A3 EB 78 */	mr r3, r29
/* 80AF691C  38 80 00 05 */	li r4, 5
/* 80AF6920  C0 3F 00 04 */	lfs f1, 4(r31)
/* 80AF6924  38 A0 00 02 */	li r5, 2
/* 80AF6928  C0 5F 00 18 */	lfs f2, 0x18(r31)
/* 80AF692C  4B FF F6 E5 */	bl anm_init__FP12npc_sq_classifUcf
/* 80AF6930  48 00 01 7C */	b lbl_80AF6AAC
lbl_80AF6934:
/* 80AF6934  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80AF6938  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80AF693C  A8 9D 04 E6 */	lha r4, 0x4e6(r29)
/* 80AF6940  4B 51 5A 9D */	bl mDoMtx_YrotS__FPA4_fs
/* 80AF6944  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80AF6948  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80AF694C  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80AF6950  C0 1F 00 70 */	lfs f0, 0x70(r31)
/* 80AF6954  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80AF6958  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80AF695C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80AF6960  38 81 00 20 */	addi r4, r1, 0x20
/* 80AF6964  38 BD 09 F0 */	addi r5, r29, 0x9f0
/* 80AF6968  4B 85 04 05 */	bl PSMTXMultVec
/* 80AF696C  38 7D 09 F0 */	addi r3, r29, 0x9f0
/* 80AF6970  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 80AF6974  7C 65 1B 78 */	mr r5, r3
/* 80AF6978  4B 85 07 19 */	bl PSVECAdd
/* 80AF697C  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 80AF6980  D0 1D 09 FC */	stfs f0, 0x9fc(r29)
/* 80AF6984  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 80AF6988  D0 1D 0A 00 */	stfs f0, 0xa00(r29)
/* 80AF698C  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 80AF6990  D0 1D 0A 04 */	stfs f0, 0xa04(r29)
/* 80AF6994  C0 3D 0A 00 */	lfs f1, 0xa00(r29)
/* 80AF6998  C0 1F 00 74 */	lfs f0, 0x74(r31)
/* 80AF699C  EC 01 00 2A */	fadds f0, f1, f0
/* 80AF69A0  D0 1D 0A 00 */	stfs f0, 0xa00(r29)
/* 80AF69A4  38 7D 05 BC */	addi r3, r29, 0x5bc
/* 80AF69A8  7F A4 EB 78 */	mr r4, r29
/* 80AF69AC  38 A0 00 00 */	li r5, 0
/* 80AF69B0  38 C0 00 00 */	li r6, 0
/* 80AF69B4  4B 75 39 25 */	bl doFlow__10dMsgFlow_cFP10fopAc_ac_cPP10fopAc_ac_ci
/* 80AF69B8  38 7D 05 BC */	addi r3, r29, 0x5bc
/* 80AF69BC  4B 75 3B 85 */	bl getNowMsgNo__10dMsgFlow_cFv
/* 80AF69C0  28 03 27 49 */	cmplwi r3, 0x2749
/* 80AF69C4  41 82 00 14 */	beq lbl_80AF69D8
/* 80AF69C8  38 7D 05 BC */	addi r3, r29, 0x5bc
/* 80AF69CC  4B 75 3B 75 */	bl getNowMsgNo__10dMsgFlow_cFv
/* 80AF69D0  28 03 27 40 */	cmplwi r3, 0x2740
/* 80AF69D4  40 82 00 D8 */	bne lbl_80AF6AAC
lbl_80AF69D8:
/* 80AF69D8  38 00 00 06 */	li r0, 6
/* 80AF69DC  B0 1D 09 EC */	sth r0, 0x9ec(r29)
/* 80AF69E0  48 00 00 CC */	b lbl_80AF6AAC
lbl_80AF69E4:
/* 80AF69E4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80AF69E8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80AF69EC  A8 9D 04 E6 */	lha r4, 0x4e6(r29)
/* 80AF69F0  4B 51 59 ED */	bl mDoMtx_YrotS__FPA4_fs
/* 80AF69F4  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 80AF69F8  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80AF69FC  C0 1F 00 78 */	lfs f0, 0x78(r31)
/* 80AF6A00  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80AF6A04  C0 1F 00 7C */	lfs f0, 0x7c(r31)
/* 80AF6A08  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80AF6A0C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80AF6A10  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80AF6A14  38 81 00 20 */	addi r4, r1, 0x20
/* 80AF6A18  38 BD 09 F0 */	addi r5, r29, 0x9f0
/* 80AF6A1C  4B 85 03 51 */	bl PSMTXMultVec
/* 80AF6A20  38 7D 09 F0 */	addi r3, r29, 0x9f0
/* 80AF6A24  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 80AF6A28  7C 65 1B 78 */	mr r5, r3
/* 80AF6A2C  4B 85 06 65 */	bl PSVECAdd
/* 80AF6A30  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 80AF6A34  D0 1D 09 FC */	stfs f0, 0x9fc(r29)
/* 80AF6A38  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 80AF6A3C  D0 1D 0A 00 */	stfs f0, 0xa00(r29)
/* 80AF6A40  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 80AF6A44  D0 1D 0A 04 */	stfs f0, 0xa04(r29)
/* 80AF6A48  C0 3D 0A 00 */	lfs f1, 0xa00(r29)
/* 80AF6A4C  C0 1F 00 80 */	lfs f0, 0x80(r31)
/* 80AF6A50  EC 01 00 2A */	fadds f0, f1, f0
/* 80AF6A54  D0 1D 0A 00 */	stfs f0, 0xa00(r29)
/* 80AF6A58  38 7D 05 BC */	addi r3, r29, 0x5bc
/* 80AF6A5C  7F A4 EB 78 */	mr r4, r29
/* 80AF6A60  38 A0 00 00 */	li r5, 0
/* 80AF6A64  38 C0 00 00 */	li r6, 0
/* 80AF6A68  4B 75 38 71 */	bl doFlow__10dMsgFlow_cFP10fopAc_ac_cPP10fopAc_ac_ci
/* 80AF6A6C  2C 03 00 00 */	cmpwi r3, 0
/* 80AF6A70  41 82 00 3C */	beq lbl_80AF6AAC
/* 80AF6A74  38 00 00 02 */	li r0, 2
/* 80AF6A78  B0 1D 06 2A */	sth r0, 0x62a(r29)
/* 80AF6A7C  38 00 00 05 */	li r0, 5
/* 80AF6A80  B0 1D 06 30 */	sth r0, 0x630(r29)
/* 80AF6A84  38 00 00 00 */	li r0, 0
/* 80AF6A88  B0 1D 09 EE */	sth r0, 0x9ee(r29)
/* 80AF6A8C  38 00 00 09 */	li r0, 9
/* 80AF6A90  B0 1D 09 EC */	sth r0, 0x9ec(r29)
/* 80AF6A94  48 00 00 18 */	b lbl_80AF6AAC
lbl_80AF6A98:
/* 80AF6A98  A8 1D 09 EE */	lha r0, 0x9ee(r29)
/* 80AF6A9C  2C 00 00 1E */	cmpwi r0, 0x1e
/* 80AF6AA0  41 80 00 0C */	blt lbl_80AF6AAC
/* 80AF6AA4  3B 80 00 01 */	li r28, 1
/* 80AF6AA8  4B 52 31 D5 */	bl fopAcM_delete__FP10fopAc_ac_c
lbl_80AF6AAC:
/* 80AF6AAC  7F 80 07 75 */	extsb. r0, r28
/* 80AF6AB0  41 82 00 4C */	beq lbl_80AF6AFC
/* 80AF6AB4  38 7E 02 48 */	addi r3, r30, 0x248
/* 80AF6AB8  4B 66 A9 F5 */	bl Start__9dCamera_cFv
/* 80AF6ABC  38 7E 02 48 */	addi r3, r30, 0x248
/* 80AF6AC0  38 80 00 00 */	li r4, 0
/* 80AF6AC4  4B 66 C5 49 */	bl SetTrimSize__9dCamera_cFl
/* 80AF6AC8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80AF6ACC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80AF6AD0  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 80AF6AD4  4B 54 B9 95 */	bl reset__14dEvt_control_cFv
/* 80AF6AD8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80AF6ADC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80AF6AE0  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 80AF6AE4  38 00 00 02 */	li r0, 2
/* 80AF6AE8  B0 03 06 04 */	sth r0, 0x604(r3)
/* 80AF6AEC  38 00 00 01 */	li r0, 1
/* 80AF6AF0  90 03 06 14 */	stw r0, 0x614(r3)
/* 80AF6AF4  38 00 00 00 */	li r0, 0
/* 80AF6AF8  B0 1D 09 EC */	sth r0, 0x9ec(r29)
lbl_80AF6AFC:
/* 80AF6AFC  A8 1D 09 EC */	lha r0, 0x9ec(r29)
/* 80AF6B00  2C 00 00 00 */	cmpwi r0, 0
/* 80AF6B04  41 82 00 58 */	beq lbl_80AF6B5C
/* 80AF6B08  C0 1D 09 FC */	lfs f0, 0x9fc(r29)
/* 80AF6B0C  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80AF6B10  C0 1D 0A 00 */	lfs f0, 0xa00(r29)
/* 80AF6B14  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80AF6B18  C0 1D 0A 04 */	lfs f0, 0xa04(r29)
/* 80AF6B1C  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80AF6B20  C0 1D 09 F0 */	lfs f0, 0x9f0(r29)
/* 80AF6B24  D0 01 00 08 */	stfs f0, 8(r1)
/* 80AF6B28  C0 1D 09 F4 */	lfs f0, 0x9f4(r29)
/* 80AF6B2C  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80AF6B30  C0 1D 09 F8 */	lfs f0, 0x9f8(r29)
/* 80AF6B34  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80AF6B38  38 7E 02 48 */	addi r3, r30, 0x248
/* 80AF6B3C  38 81 00 14 */	addi r4, r1, 0x14
/* 80AF6B40  38 A1 00 08 */	addi r5, r1, 8
/* 80AF6B44  C0 3D 0A 38 */	lfs f1, 0xa38(r29)
/* 80AF6B48  38 C0 00 00 */	li r6, 0
/* 80AF6B4C  4B 68 9F 95 */	bl Set__9dCamera_cF4cXyz4cXyzfs
/* 80AF6B50  A8 7D 09 EE */	lha r3, 0x9ee(r29)
/* 80AF6B54  38 03 00 01 */	addi r0, r3, 1
/* 80AF6B58  B0 1D 09 EE */	sth r0, 0x9ee(r29)
lbl_80AF6B5C:
/* 80AF6B5C  39 61 00 50 */	addi r11, r1, 0x50
/* 80AF6B60  4B 86 B6 C1 */	bl _restgpr_27
/* 80AF6B64  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80AF6B68  7C 08 03 A6 */	mtlr r0
/* 80AF6B6C  38 21 00 50 */	addi r1, r1, 0x50
/* 80AF6B70  4E 80 00 20 */	blr 
