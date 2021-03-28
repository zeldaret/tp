lbl_805D6534:
/* 805D6534  94 21 FE 50 */	stwu r1, -0x1b0(r1)
/* 805D6538  7C 08 02 A6 */	mflr r0
/* 805D653C  90 01 01 B4 */	stw r0, 0x1b4(r1)
/* 805D6540  39 61 01 B0 */	addi r11, r1, 0x1b0
/* 805D6544  4B D8 BC 88 */	b _savegpr_25
/* 805D6548  7C 7F 1B 78 */	mr r31, r3
/* 805D654C  3C 60 80 5E */	lis r3, lit_1109@ha
/* 805D6550  3B A3 DA 70 */	addi r29, r3, lit_1109@l
/* 805D6554  3C 60 80 5E */	lis r3, lit_3932@ha
/* 805D6558  3B C3 CA 54 */	addi r30, r3, lit_3932@l
/* 805D655C  88 1D 06 D8 */	lbz r0, 0x6d8(r29)
/* 805D6560  7C 00 07 75 */	extsb. r0, r0
/* 805D6564  40 82 00 80 */	bne lbl_805D65E4
/* 805D6568  C0 5E 04 F4 */	lfs f2, 0x4f4(r30)
/* 805D656C  D0 41 01 54 */	stfs f2, 0x154(r1)
/* 805D6570  C0 3E 04 F8 */	lfs f1, 0x4f8(r30)
/* 805D6574  D0 21 01 58 */	stfs f1, 0x158(r1)
/* 805D6578  C0 1E 04 FC */	lfs f0, 0x4fc(r30)
/* 805D657C  D0 01 01 5C */	stfs f0, 0x15c(r1)
/* 805D6580  D0 5D 06 E8 */	stfs f2, 0x6e8(r29)
/* 805D6584  38 7D 06 E8 */	addi r3, r29, 0x6e8
/* 805D6588  D0 23 00 04 */	stfs f1, 4(r3)
/* 805D658C  D0 03 00 08 */	stfs f0, 8(r3)
/* 805D6590  3C 80 80 5E */	lis r4, __dt__4cXyzFv@ha
/* 805D6594  38 84 C9 68 */	addi r4, r4, __dt__4cXyzFv@l
/* 805D6598  38 BD 06 CC */	addi r5, r29, 0x6cc
/* 805D659C  4B FF 4C 1D */	bl __register_global_object
/* 805D65A0  C0 5E 05 00 */	lfs f2, 0x500(r30)
/* 805D65A4  D0 41 01 48 */	stfs f2, 0x148(r1)
/* 805D65A8  C0 3E 04 F8 */	lfs f1, 0x4f8(r30)
/* 805D65AC  D0 21 01 4C */	stfs f1, 0x14c(r1)
/* 805D65B0  C0 1E 05 04 */	lfs f0, 0x504(r30)
/* 805D65B4  D0 01 01 50 */	stfs f0, 0x150(r1)
/* 805D65B8  38 7D 06 E8 */	addi r3, r29, 0x6e8
/* 805D65BC  D0 43 00 0C */	stfs f2, 0xc(r3)
/* 805D65C0  D0 23 00 10 */	stfs f1, 0x10(r3)
/* 805D65C4  D0 03 00 14 */	stfs f0, 0x14(r3)
/* 805D65C8  38 63 00 0C */	addi r3, r3, 0xc
/* 805D65CC  3C 80 80 5E */	lis r4, __dt__4cXyzFv@ha
/* 805D65D0  38 84 C9 68 */	addi r4, r4, __dt__4cXyzFv@l
/* 805D65D4  38 BD 06 DC */	addi r5, r29, 0x6dc
/* 805D65D8  4B FF 4B E1 */	bl __register_global_object
/* 805D65DC  38 00 00 01 */	li r0, 1
/* 805D65E0  98 1D 06 D8 */	stb r0, 0x6d8(r29)
lbl_805D65E4:
/* 805D65E4  88 1D 07 0C */	lbz r0, 0x70c(r29)
/* 805D65E8  7C 00 07 75 */	extsb. r0, r0
/* 805D65EC  40 82 00 80 */	bne lbl_805D666C
/* 805D65F0  C0 5E 05 08 */	lfs f2, 0x508(r30)
/* 805D65F4  D0 41 01 3C */	stfs f2, 0x13c(r1)
/* 805D65F8  C0 3E 04 24 */	lfs f1, 0x424(r30)
/* 805D65FC  D0 21 01 40 */	stfs f1, 0x140(r1)
/* 805D6600  C0 1E 05 0C */	lfs f0, 0x50c(r30)
/* 805D6604  D0 01 01 44 */	stfs f0, 0x144(r1)
/* 805D6608  D0 5D 07 1C */	stfs f2, 0x71c(r29)
/* 805D660C  38 7D 07 1C */	addi r3, r29, 0x71c
/* 805D6610  D0 23 00 04 */	stfs f1, 4(r3)
/* 805D6614  D0 03 00 08 */	stfs f0, 8(r3)
/* 805D6618  3C 80 80 5E */	lis r4, __dt__4cXyzFv@ha
/* 805D661C  38 84 C9 68 */	addi r4, r4, __dt__4cXyzFv@l
/* 805D6620  38 BD 07 00 */	addi r5, r29, 0x700
/* 805D6624  4B FF 4B 95 */	bl __register_global_object
/* 805D6628  C0 5E 05 10 */	lfs f2, 0x510(r30)
/* 805D662C  D0 41 01 30 */	stfs f2, 0x130(r1)
/* 805D6630  C0 3E 04 24 */	lfs f1, 0x424(r30)
/* 805D6634  D0 21 01 34 */	stfs f1, 0x134(r1)
/* 805D6638  C0 1E 05 14 */	lfs f0, 0x514(r30)
/* 805D663C  D0 01 01 38 */	stfs f0, 0x138(r1)
/* 805D6640  38 7D 07 1C */	addi r3, r29, 0x71c
/* 805D6644  D0 43 00 0C */	stfs f2, 0xc(r3)
/* 805D6648  D0 23 00 10 */	stfs f1, 0x10(r3)
/* 805D664C  D0 03 00 14 */	stfs f0, 0x14(r3)
/* 805D6650  38 63 00 0C */	addi r3, r3, 0xc
/* 805D6654  3C 80 80 5E */	lis r4, __dt__4cXyzFv@ha
/* 805D6658  38 84 C9 68 */	addi r4, r4, __dt__4cXyzFv@l
/* 805D665C  38 BD 07 10 */	addi r5, r29, 0x710
/* 805D6660  4B FF 4B 59 */	bl __register_global_object
/* 805D6664  38 00 00 01 */	li r0, 1
/* 805D6668  98 1D 07 0C */	stb r0, 0x70c(r29)
lbl_805D666C:
/* 805D666C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805D6670  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l
/* 805D6674  88 04 5D B0 */	lbz r0, 0x5db0(r4)
/* 805D6678  7C 00 07 74 */	extsb r0, r0
/* 805D667C  1C 00 00 38 */	mulli r0, r0, 0x38
/* 805D6680  7C 64 02 14 */	add r3, r4, r0
/* 805D6684  83 83 5D 74 */	lwz r28, 0x5d74(r3)
/* 805D6688  80 1F 04 E4 */	lwz r0, 0x4e4(r31)
/* 805D668C  90 01 00 14 */	stw r0, 0x14(r1)
/* 805D6690  A0 1F 04 E8 */	lhz r0, 0x4e8(r31)
/* 805D6694  B0 01 00 18 */	sth r0, 0x18(r1)
/* 805D6698  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 805D669C  D0 01 01 6C */	stfs f0, 0x16c(r1)
/* 805D66A0  D0 01 01 70 */	stfs f0, 0x170(r1)
/* 805D66A4  D0 01 01 74 */	stfs f0, 0x174(r1)
/* 805D66A8  80 BF 06 84 */	lwz r5, 0x684(r31)
/* 805D66AC  28 05 00 64 */	cmplwi r5, 0x64
/* 805D66B0  41 81 13 D4 */	bgt lbl_805D7A84
/* 805D66B4  3C 60 80 5E */	lis r3, lit_9591@ha
/* 805D66B8  38 63 D6 84 */	addi r3, r3, lit_9591@l
/* 805D66BC  54 A0 10 3A */	slwi r0, r5, 2
/* 805D66C0  7C 03 00 2E */	lwzx r0, r3, r0
/* 805D66C4  7C 09 03 A6 */	mtctr r0
/* 805D66C8  4E 80 04 20 */	bctr 
lbl_805D66CC:
/* 805D66CC  7F E3 FB 78 */	mr r3, r31
/* 805D66D0  4B FF 72 09 */	bl startDemoCheck__8daB_DS_cFv
/* 805D66D4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 805D66D8  41 82 13 AC */	beq lbl_805D7A84
/* 805D66DC  38 00 00 00 */	li r0, 0
/* 805D66E0  90 1F 08 38 */	stw r0, 0x838(r31)
/* 805D66E4  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 805D66E8  D0 1F 06 F4 */	stfs f0, 0x6f4(r31)
/* 805D66EC  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 805D66F0  D0 1F 06 F8 */	stfs f0, 0x6f8(r31)
/* 805D66F4  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 805D66F8  D0 1F 06 FC */	stfs f0, 0x6fc(r31)
/* 805D66FC  A8 1F 04 E4 */	lha r0, 0x4e4(r31)
/* 805D6700  B0 1F 04 B4 */	sth r0, 0x4b4(r31)
/* 805D6704  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 805D6708  B0 1F 04 B6 */	sth r0, 0x4b6(r31)
/* 805D670C  A8 1F 04 E8 */	lha r0, 0x4e8(r31)
/* 805D6710  B0 1F 04 B8 */	sth r0, 0x4b8(r31)
/* 805D6714  A8 1F 04 DC */	lha r0, 0x4dc(r31)
/* 805D6718  B0 1F 07 C0 */	sth r0, 0x7c0(r31)
/* 805D671C  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 805D6720  B0 1F 07 C2 */	sth r0, 0x7c2(r31)
/* 805D6724  A8 1F 04 E0 */	lha r0, 0x4e0(r31)
/* 805D6728  B0 1F 07 C4 */	sth r0, 0x7c4(r31)
/* 805D672C  C0 3E 00 04 */	lfs f1, 4(r30)
/* 805D6730  D0 21 01 24 */	stfs f1, 0x124(r1)
/* 805D6734  C0 1E 00 08 */	lfs f0, 8(r30)
/* 805D6738  D0 01 01 28 */	stfs f0, 0x128(r1)
/* 805D673C  D0 21 01 2C */	stfs f1, 0x12c(r1)
/* 805D6740  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805D6744  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 805D6748  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 805D674C  38 80 00 05 */	li r4, 5
/* 805D6750  38 A0 00 4F */	li r5, 0x4f
/* 805D6754  38 C1 01 24 */	addi r6, r1, 0x124
/* 805D6758  4B A9 92 CC */	b StartShock__12dVibration_cFii4cXyz
lbl_805D675C:
/* 805D675C  C0 1E 00 04 */	lfs f0, 4(r30)
/* 805D6760  D0 1F 07 90 */	stfs f0, 0x790(r31)
/* 805D6764  D0 1F 07 94 */	stfs f0, 0x794(r31)
/* 805D6768  D0 1F 07 98 */	stfs f0, 0x798(r31)
/* 805D676C  7F E3 FB 78 */	mr r3, r31
/* 805D6770  38 80 00 25 */	li r4, 0x25
/* 805D6774  38 A0 00 02 */	li r5, 2
/* 805D6778  C0 3E 03 B8 */	lfs f1, 0x3b8(r30)
/* 805D677C  C0 5E 00 08 */	lfs f2, 8(r30)
/* 805D6780  4B FF 53 49 */	bl setBck__8daB_DS_cFiUcff
/* 805D6784  C0 1E 00 4C */	lfs f0, 0x4c(r30)
/* 805D6788  D0 1F 07 E8 */	stfs f0, 0x7e8(r31)
/* 805D678C  38 00 00 00 */	li r0, 0
/* 805D6790  90 1F 08 18 */	stw r0, 0x818(r31)
/* 805D6794  C0 1E 02 F0 */	lfs f0, 0x2f0(r30)
/* 805D6798  D0 1F 2D 2C */	stfs f0, 0x2d2c(r31)
/* 805D679C  C0 1E 00 70 */	lfs f0, 0x70(r30)
/* 805D67A0  D0 1F 08 10 */	stfs f0, 0x810(r31)
/* 805D67A4  D0 1F 08 00 */	stfs f0, 0x800(r31)
/* 805D67A8  38 61 01 18 */	addi r3, r1, 0x118
/* 805D67AC  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 805D67B0  38 BF 04 A8 */	addi r5, r31, 0x4a8
/* 805D67B4  4B C9 03 80 */	b __mi__4cXyzCFRC3Vec
/* 805D67B8  C0 01 01 18 */	lfs f0, 0x118(r1)
/* 805D67BC  D0 01 01 78 */	stfs f0, 0x178(r1)
/* 805D67C0  C0 01 01 1C */	lfs f0, 0x11c(r1)
/* 805D67C4  D0 01 01 7C */	stfs f0, 0x17c(r1)
/* 805D67C8  C0 01 01 20 */	lfs f0, 0x120(r1)
/* 805D67CC  D0 01 01 80 */	stfs f0, 0x180(r1)
/* 805D67D0  88 1F 08 4C */	lbz r0, 0x84c(r31)
/* 805D67D4  28 00 00 00 */	cmplwi r0, 0
/* 805D67D8  41 82 00 18 */	beq lbl_805D67F0
/* 805D67DC  38 61 01 78 */	addi r3, r1, 0x178
/* 805D67E0  4B C9 09 48 */	b atan2sX_Z__4cXyzCFv
/* 805D67E4  38 03 20 00 */	addi r0, r3, 0x2000
/* 805D67E8  B0 1F 07 D2 */	sth r0, 0x7d2(r31)
/* 805D67EC  48 00 00 14 */	b lbl_805D6800
lbl_805D67F0:
/* 805D67F0  38 61 01 78 */	addi r3, r1, 0x178
/* 805D67F4  4B C9 09 34 */	b atan2sX_Z__4cXyzCFv
/* 805D67F8  38 03 80 00 */	addi r0, r3, -32768
/* 805D67FC  B0 1F 07 D2 */	sth r0, 0x7d2(r31)
lbl_805D6800:
/* 805D6800  38 00 00 00 */	li r0, 0
/* 805D6804  90 1F 08 3C */	stw r0, 0x83c(r31)
/* 805D6808  C0 1E 00 04 */	lfs f0, 4(r30)
/* 805D680C  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 805D6810  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 805D6814  D0 1F 05 30 */	stfs f0, 0x530(r31)
/* 805D6818  A8 1F 07 D2 */	lha r0, 0x7d2(r31)
/* 805D681C  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 805D6820  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805D6824  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 805D6828  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 805D682C  38 80 00 04 */	li r4, 4
/* 805D6830  38 A0 00 01 */	li r5, 1
/* 805D6834  38 C0 00 00 */	li r6, 0
/* 805D6838  38 E0 00 00 */	li r7, 0
/* 805D683C  48 00 61 A1 */	bl changeDemoMode__9daPy_py_cFUliis
/* 805D6840  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 805D6844  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 805D6848  80 63 00 00 */	lwz r3, 0(r3)
/* 805D684C  A8 9F 07 D2 */	lha r4, 0x7d2(r31)
/* 805D6850  4B A3 5B 8C */	b mDoMtx_YrotS__FPA4_fs
/* 805D6854  C0 1E 00 04 */	lfs f0, 4(r30)
/* 805D6858  D0 01 01 84 */	stfs f0, 0x184(r1)
/* 805D685C  D0 01 01 88 */	stfs f0, 0x188(r1)
/* 805D6860  C0 1E 00 6C */	lfs f0, 0x6c(r30)
/* 805D6864  D0 01 01 8C */	stfs f0, 0x18c(r1)
/* 805D6868  38 61 01 84 */	addi r3, r1, 0x184
/* 805D686C  38 81 01 78 */	addi r4, r1, 0x178
/* 805D6870  4B C9 A6 7C */	b MtxPosition__FP4cXyzP4cXyz
/* 805D6874  38 61 01 78 */	addi r3, r1, 0x178
/* 805D6878  38 9F 06 F4 */	addi r4, r31, 0x6f4
/* 805D687C  7C 65 1B 78 */	mr r5, r3
/* 805D6880  4B D7 08 10 */	b PSVECAdd
/* 805D6884  C0 01 01 78 */	lfs f0, 0x178(r1)
/* 805D6888  D0 1F 2D 14 */	stfs f0, 0x2d14(r31)
/* 805D688C  C0 01 01 7C */	lfs f0, 0x17c(r1)
/* 805D6890  D0 1F 2D 18 */	stfs f0, 0x2d18(r31)
/* 805D6894  C0 01 01 80 */	lfs f0, 0x180(r1)
/* 805D6898  D0 1F 2D 1C */	stfs f0, 0x2d1c(r31)
/* 805D689C  38 00 00 01 */	li r0, 1
/* 805D68A0  90 1F 06 84 */	stw r0, 0x684(r31)
lbl_805D68A4:
/* 805D68A4  A8 7F 04 E8 */	lha r3, 0x4e8(r31)
/* 805D68A8  38 03 01 00 */	addi r0, r3, 0x100
/* 805D68AC  B0 1F 04 E8 */	sth r0, 0x4e8(r31)
/* 805D68B0  C0 3F 04 D4 */	lfs f1, 0x4d4(r31)
/* 805D68B4  C0 1E 05 18 */	lfs f0, 0x518(r30)
/* 805D68B8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805D68BC  40 80 00 6C */	bge lbl_805D6928
/* 805D68C0  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 805D68C4  D0 1F 2D 20 */	stfs f0, 0x2d20(r31)
/* 805D68C8  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 805D68CC  D0 1F 2D 24 */	stfs f0, 0x2d24(r31)
/* 805D68D0  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 805D68D4  D0 1F 2D 28 */	stfs f0, 0x2d28(r31)
/* 805D68D8  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 805D68DC  D0 01 01 78 */	stfs f0, 0x178(r1)
/* 805D68E0  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 805D68E4  D0 01 01 7C */	stfs f0, 0x17c(r1)
/* 805D68E8  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 805D68EC  D0 01 01 80 */	stfs f0, 0x180(r1)
/* 805D68F0  C0 1E 00 34 */	lfs f0, 0x34(r30)
/* 805D68F4  D0 01 01 7C */	stfs f0, 0x17c(r1)
/* 805D68F8  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 805D68FC  38 81 01 78 */	addi r4, r1, 0x178
/* 805D6900  C0 3E 00 08 */	lfs f1, 8(r30)
/* 805D6904  C0 5E 04 10 */	lfs f2, 0x410(r30)
/* 805D6908  C0 7E 01 A0 */	lfs f3, 0x1a0(r30)
/* 805D690C  4B C9 91 AC */	b cLib_addCalcPos__FP4cXyzRC4cXyzfff
/* 805D6910  38 7F 04 E4 */	addi r3, r31, 0x4e4
/* 805D6914  38 80 C0 00 */	li r4, -16384
/* 805D6918  38 A0 00 04 */	li r5, 4
/* 805D691C  38 C0 04 00 */	li r6, 0x400
/* 805D6920  4B C9 9C E8 */	b cLib_addCalcAngleS2__FPssss
/* 805D6924  48 00 11 60 */	b lbl_805D7A84
lbl_805D6928:
/* 805D6928  C0 1E 00 04 */	lfs f0, 4(r30)
/* 805D692C  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 805D6930  80 7F 06 84 */	lwz r3, 0x684(r31)
/* 805D6934  38 03 00 01 */	addi r0, r3, 1
/* 805D6938  90 1F 06 84 */	stw r0, 0x684(r31)
lbl_805D693C:
/* 805D693C  C0 1E 01 CC */	lfs f0, 0x1cc(r30)
/* 805D6940  D0 1F 08 10 */	stfs f0, 0x810(r31)
/* 805D6944  38 61 01 0C */	addi r3, r1, 0x10c
/* 805D6948  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 805D694C  38 BF 04 A8 */	addi r5, r31, 0x4a8
/* 805D6950  4B C9 01 E4 */	b __mi__4cXyzCFRC3Vec
/* 805D6954  C0 01 01 0C */	lfs f0, 0x10c(r1)
/* 805D6958  D0 01 01 78 */	stfs f0, 0x178(r1)
/* 805D695C  C0 01 01 10 */	lfs f0, 0x110(r1)
/* 805D6960  D0 01 01 7C */	stfs f0, 0x17c(r1)
/* 805D6964  C0 01 01 14 */	lfs f0, 0x114(r1)
/* 805D6968  D0 01 01 80 */	stfs f0, 0x180(r1)
/* 805D696C  C0 1E 05 1C */	lfs f0, 0x51c(r30)
/* 805D6970  D0 1F 08 0C */	stfs f0, 0x80c(r31)
/* 805D6974  38 61 01 78 */	addi r3, r1, 0x178
/* 805D6978  4B C9 07 B0 */	b atan2sX_Z__4cXyzCFv
/* 805D697C  7C 64 1B 78 */	mr r4, r3
/* 805D6980  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 805D6984  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 805D6988  80 63 00 00 */	lwz r3, 0(r3)
/* 805D698C  4B A3 5A 50 */	b mDoMtx_YrotS__FPA4_fs
/* 805D6990  C0 1E 00 04 */	lfs f0, 4(r30)
/* 805D6994  D0 01 01 84 */	stfs f0, 0x184(r1)
/* 805D6998  D0 01 01 88 */	stfs f0, 0x188(r1)
/* 805D699C  C0 1F 08 0C */	lfs f0, 0x80c(r31)
/* 805D69A0  D0 01 01 8C */	stfs f0, 0x18c(r1)
/* 805D69A4  38 61 01 84 */	addi r3, r1, 0x184
/* 805D69A8  38 81 01 78 */	addi r4, r1, 0x178
/* 805D69AC  4B C9 A5 40 */	b MtxPosition__FP4cXyzP4cXyz
/* 805D69B0  38 61 01 78 */	addi r3, r1, 0x178
/* 805D69B4  38 9F 04 A8 */	addi r4, r31, 0x4a8
/* 805D69B8  7C 65 1B 78 */	mr r5, r3
/* 805D69BC  4B D7 06 D4 */	b PSVECAdd
/* 805D69C0  C0 01 01 78 */	lfs f0, 0x178(r1)
/* 805D69C4  D0 1F 04 D0 */	stfs f0, 0x4d0(r31)
/* 805D69C8  C0 1E 00 34 */	lfs f0, 0x34(r30)
/* 805D69CC  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
/* 805D69D0  C0 01 01 80 */	lfs f0, 0x180(r1)
/* 805D69D4  D0 1F 04 D8 */	stfs f0, 0x4d8(r31)
/* 805D69D8  38 61 01 00 */	addi r3, r1, 0x100
/* 805D69DC  38 9F 04 A8 */	addi r4, r31, 0x4a8
/* 805D69E0  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 805D69E4  4B C9 01 50 */	b __mi__4cXyzCFRC3Vec
/* 805D69E8  C0 01 01 00 */	lfs f0, 0x100(r1)
/* 805D69EC  D0 01 01 78 */	stfs f0, 0x178(r1)
/* 805D69F0  C0 01 01 04 */	lfs f0, 0x104(r1)
/* 805D69F4  D0 01 01 7C */	stfs f0, 0x17c(r1)
/* 805D69F8  C0 01 01 08 */	lfs f0, 0x108(r1)
/* 805D69FC  D0 01 01 80 */	stfs f0, 0x180(r1)
/* 805D6A00  C0 1E 00 04 */	lfs f0, 4(r30)
/* 805D6A04  D0 01 01 7C */	stfs f0, 0x17c(r1)
/* 805D6A08  C0 1E 05 20 */	lfs f0, 0x520(r30)
/* 805D6A0C  D0 1F 08 0C */	stfs f0, 0x80c(r31)
/* 805D6A10  38 61 01 78 */	addi r3, r1, 0x178
/* 805D6A14  4B C9 07 14 */	b atan2sX_Z__4cXyzCFv
/* 805D6A18  38 03 27 10 */	addi r0, r3, 0x2710
/* 805D6A1C  7C 04 07 34 */	extsh r4, r0
/* 805D6A20  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 805D6A24  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 805D6A28  80 63 00 00 */	lwz r3, 0(r3)
/* 805D6A2C  4B A3 59 B0 */	b mDoMtx_YrotS__FPA4_fs
/* 805D6A30  C0 1E 00 04 */	lfs f0, 4(r30)
/* 805D6A34  D0 01 01 84 */	stfs f0, 0x184(r1)
/* 805D6A38  D0 01 01 88 */	stfs f0, 0x188(r1)
/* 805D6A3C  C0 1F 08 0C */	lfs f0, 0x80c(r31)
/* 805D6A40  D0 01 01 8C */	stfs f0, 0x18c(r1)
/* 805D6A44  38 61 01 84 */	addi r3, r1, 0x184
/* 805D6A48  38 81 01 78 */	addi r4, r1, 0x178
/* 805D6A4C  4B C9 A4 A0 */	b MtxPosition__FP4cXyzP4cXyz
/* 805D6A50  38 61 01 78 */	addi r3, r1, 0x178
/* 805D6A54  38 9F 04 A8 */	addi r4, r31, 0x4a8
/* 805D6A58  7C 65 1B 78 */	mr r5, r3
/* 805D6A5C  4B D7 06 34 */	b PSVECAdd
/* 805D6A60  C0 1E 05 1C */	lfs f0, 0x51c(r30)
/* 805D6A64  D0 01 01 7C */	stfs f0, 0x17c(r1)
/* 805D6A68  C0 01 01 78 */	lfs f0, 0x178(r1)
/* 805D6A6C  D0 1F 2D 14 */	stfs f0, 0x2d14(r31)
/* 805D6A70  C0 01 01 7C */	lfs f0, 0x17c(r1)
/* 805D6A74  D0 1F 2D 18 */	stfs f0, 0x2d18(r31)
/* 805D6A78  C0 01 01 80 */	lfs f0, 0x180(r1)
/* 805D6A7C  D0 1F 2D 1C */	stfs f0, 0x2d1c(r31)
/* 805D6A80  C0 1E 05 20 */	lfs f0, 0x520(r30)
/* 805D6A84  D0 1F 08 0C */	stfs f0, 0x80c(r31)
/* 805D6A88  38 61 00 F4 */	addi r3, r1, 0xf4
/* 805D6A8C  38 9F 04 A8 */	addi r4, r31, 0x4a8
/* 805D6A90  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 805D6A94  4B C9 00 A0 */	b __mi__4cXyzCFRC3Vec
/* 805D6A98  C0 01 00 F4 */	lfs f0, 0xf4(r1)
/* 805D6A9C  D0 01 01 78 */	stfs f0, 0x178(r1)
/* 805D6AA0  C0 01 00 F8 */	lfs f0, 0xf8(r1)
/* 805D6AA4  D0 01 01 7C */	stfs f0, 0x17c(r1)
/* 805D6AA8  C0 01 00 FC */	lfs f0, 0xfc(r1)
/* 805D6AAC  D0 01 01 80 */	stfs f0, 0x180(r1)
/* 805D6AB0  38 61 01 78 */	addi r3, r1, 0x178
/* 805D6AB4  4B C9 06 74 */	b atan2sX_Z__4cXyzCFv
/* 805D6AB8  7C 64 1B 78 */	mr r4, r3
/* 805D6ABC  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 805D6AC0  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 805D6AC4  80 63 00 00 */	lwz r3, 0(r3)
/* 805D6AC8  4B A3 59 14 */	b mDoMtx_YrotS__FPA4_fs
/* 805D6ACC  38 61 01 78 */	addi r3, r1, 0x178
/* 805D6AD0  4B C9 06 80 */	b atan2sY_XZ__4cXyzCFv
/* 805D6AD4  7C 64 1B 78 */	mr r4, r3
/* 805D6AD8  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 805D6ADC  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 805D6AE0  80 63 00 00 */	lwz r3, 0(r3)
/* 805D6AE4  4B A3 58 B8 */	b mDoMtx_XrotM__FPA4_fs
/* 805D6AE8  C0 1E 00 04 */	lfs f0, 4(r30)
/* 805D6AEC  D0 01 01 84 */	stfs f0, 0x184(r1)
/* 805D6AF0  C0 1E 00 00 */	lfs f0, 0(r30)
/* 805D6AF4  D0 01 01 88 */	stfs f0, 0x188(r1)
/* 805D6AF8  C0 1F 08 0C */	lfs f0, 0x80c(r31)
/* 805D6AFC  D0 01 01 8C */	stfs f0, 0x18c(r1)
/* 805D6B00  38 61 01 84 */	addi r3, r1, 0x184
/* 805D6B04  38 81 01 78 */	addi r4, r1, 0x178
/* 805D6B08  4B C9 A3 E4 */	b MtxPosition__FP4cXyzP4cXyz
/* 805D6B0C  38 61 00 E8 */	addi r3, r1, 0xe8
/* 805D6B10  38 81 01 78 */	addi r4, r1, 0x178
/* 805D6B14  38 BF 04 A8 */	addi r5, r31, 0x4a8
/* 805D6B18  4B C8 FF CC */	b __pl__4cXyzCFRC3Vec
/* 805D6B1C  C0 01 00 E8 */	lfs f0, 0xe8(r1)
/* 805D6B20  D0 1F 07 18 */	stfs f0, 0x718(r31)
/* 805D6B24  C0 01 00 EC */	lfs f0, 0xec(r1)
/* 805D6B28  D0 1F 07 1C */	stfs f0, 0x71c(r31)
/* 805D6B2C  C0 01 00 F0 */	lfs f0, 0xf0(r1)
/* 805D6B30  D0 1F 07 20 */	stfs f0, 0x720(r31)
/* 805D6B34  38 61 00 DC */	addi r3, r1, 0xdc
/* 805D6B38  38 9F 07 18 */	addi r4, r31, 0x718
/* 805D6B3C  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 805D6B40  4B C8 FF F4 */	b __mi__4cXyzCFRC3Vec
/* 805D6B44  C0 01 00 DC */	lfs f0, 0xdc(r1)
/* 805D6B48  D0 01 01 78 */	stfs f0, 0x178(r1)
/* 805D6B4C  C0 01 00 E0 */	lfs f0, 0xe0(r1)
/* 805D6B50  D0 01 01 7C */	stfs f0, 0x17c(r1)
/* 805D6B54  C0 01 00 E4 */	lfs f0, 0xe4(r1)
/* 805D6B58  D0 01 01 80 */	stfs f0, 0x180(r1)
/* 805D6B5C  38 61 01 78 */	addi r3, r1, 0x178
/* 805D6B60  4B C9 05 F0 */	b atan2sY_XZ__4cXyzCFv
/* 805D6B64  B0 7F 07 BA */	sth r3, 0x7ba(r31)
/* 805D6B68  38 61 01 78 */	addi r3, r1, 0x178
/* 805D6B6C  4B C9 05 BC */	b atan2sX_Z__4cXyzCFv
/* 805D6B70  B0 7F 07 BC */	sth r3, 0x7bc(r31)
/* 805D6B74  38 00 00 00 */	li r0, 0
/* 805D6B78  B0 1F 07 BE */	sth r0, 0x7be(r31)
/* 805D6B7C  A8 1F 07 BA */	lha r0, 0x7ba(r31)
/* 805D6B80  B0 1F 04 DC */	sth r0, 0x4dc(r31)
/* 805D6B84  A8 1F 07 BC */	lha r0, 0x7bc(r31)
/* 805D6B88  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 805D6B8C  A8 1F 07 BE */	lha r0, 0x7be(r31)
/* 805D6B90  B0 1F 04 E0 */	sth r0, 0x4e0(r31)
/* 805D6B94  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 805D6B98  D0 1F 2D 20 */	stfs f0, 0x2d20(r31)
/* 805D6B9C  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 805D6BA0  D0 1F 2D 24 */	stfs f0, 0x2d24(r31)
/* 805D6BA4  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 805D6BA8  D0 1F 2D 28 */	stfs f0, 0x2d28(r31)
/* 805D6BAC  80 7F 06 84 */	lwz r3, 0x684(r31)
/* 805D6BB0  38 03 00 01 */	addi r0, r3, 1
/* 805D6BB4  90 1F 06 84 */	stw r0, 0x684(r31)
lbl_805D6BB8:
/* 805D6BB8  7F E3 FB 78 */	mr r3, r31
/* 805D6BBC  4B FF F5 01 */	bl mDeadMove__8daB_DS_cFv
/* 805D6BC0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 805D6BC4  41 82 0E C0 */	beq lbl_805D7A84
/* 805D6BC8  C0 1E 00 04 */	lfs f0, 4(r30)
/* 805D6BCC  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 805D6BD0  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 805D6BD4  D0 1F 05 30 */	stfs f0, 0x530(r31)
/* 805D6BD8  D0 1F 07 E8 */	stfs f0, 0x7e8(r31)
/* 805D6BDC  D0 1F 07 90 */	stfs f0, 0x790(r31)
/* 805D6BE0  D0 1F 07 94 */	stfs f0, 0x794(r31)
/* 805D6BE4  D0 1F 07 98 */	stfs f0, 0x798(r31)
/* 805D6BE8  A8 7F 07 D2 */	lha r3, 0x7d2(r31)
/* 805D6BEC  38 03 F0 00 */	addi r0, r3, -4096
/* 805D6BF0  B0 1F 07 D2 */	sth r0, 0x7d2(r31)
/* 805D6BF4  7F E3 FB 78 */	mr r3, r31
/* 805D6BF8  38 80 00 24 */	li r4, 0x24
/* 805D6BFC  38 A0 00 02 */	li r5, 2
/* 805D6C00  C0 3E 03 B8 */	lfs f1, 0x3b8(r30)
/* 805D6C04  C0 5E 00 08 */	lfs f2, 8(r30)
/* 805D6C08  4B FF 4E C1 */	bl setBck__8daB_DS_cFiUcff
/* 805D6C0C  C0 1E 00 04 */	lfs f0, 4(r30)
/* 805D6C10  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 805D6C14  80 7F 06 84 */	lwz r3, 0x684(r31)
/* 805D6C18  38 03 00 01 */	addi r0, r3, 1
/* 805D6C1C  90 1F 06 84 */	stw r0, 0x684(r31)
lbl_805D6C20:
/* 805D6C20  C0 1F 07 18 */	lfs f0, 0x718(r31)
/* 805D6C24  D0 1F 04 D0 */	stfs f0, 0x4d0(r31)
/* 805D6C28  C0 1F 07 1C */	lfs f0, 0x71c(r31)
/* 805D6C2C  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
/* 805D6C30  C0 1F 07 20 */	lfs f0, 0x720(r31)
/* 805D6C34  D0 1F 04 D8 */	stfs f0, 0x4d8(r31)
/* 805D6C38  38 00 52 77 */	li r0, 0x5277
/* 805D6C3C  B0 1F 04 E8 */	sth r0, 0x4e8(r31)
/* 805D6C40  38 00 04 A4 */	li r0, 0x4a4
/* 805D6C44  B0 1F 04 E4 */	sth r0, 0x4e4(r31)
/* 805D6C48  B0 1F 04 DC */	sth r0, 0x4dc(r31)
/* 805D6C4C  38 61 00 D0 */	addi r3, r1, 0xd0
/* 805D6C50  38 9F 04 A8 */	addi r4, r31, 0x4a8
/* 805D6C54  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 805D6C58  4B C8 FE DC */	b __mi__4cXyzCFRC3Vec
/* 805D6C5C  C0 01 00 D0 */	lfs f0, 0xd0(r1)
/* 805D6C60  D0 01 01 78 */	stfs f0, 0x178(r1)
/* 805D6C64  C0 01 00 D4 */	lfs f0, 0xd4(r1)
/* 805D6C68  D0 01 01 7C */	stfs f0, 0x17c(r1)
/* 805D6C6C  C0 01 00 D8 */	lfs f0, 0xd8(r1)
/* 805D6C70  D0 01 01 80 */	stfs f0, 0x180(r1)
/* 805D6C74  C0 1E 00 04 */	lfs f0, 4(r30)
/* 805D6C78  D0 01 01 7C */	stfs f0, 0x17c(r1)
/* 805D6C7C  38 61 01 78 */	addi r3, r1, 0x178
/* 805D6C80  4B C9 04 A8 */	b atan2sX_Z__4cXyzCFv
/* 805D6C84  3C 63 FF FF */	addis r3, r3, 0xffff
/* 805D6C88  38 03 63 C0 */	addi r0, r3, 0x63c0
/* 805D6C8C  7C 04 07 34 */	extsh r4, r0
/* 805D6C90  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 805D6C94  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 805D6C98  80 63 00 00 */	lwz r3, 0(r3)
/* 805D6C9C  4B A3 57 40 */	b mDoMtx_YrotS__FPA4_fs
/* 805D6CA0  C0 1E 00 04 */	lfs f0, 4(r30)
/* 805D6CA4  D0 01 01 84 */	stfs f0, 0x184(r1)
/* 805D6CA8  D0 01 01 88 */	stfs f0, 0x188(r1)
/* 805D6CAC  C0 1E 05 24 */	lfs f0, 0x524(r30)
/* 805D6CB0  D0 01 01 8C */	stfs f0, 0x18c(r1)
/* 805D6CB4  38 61 01 84 */	addi r3, r1, 0x184
/* 805D6CB8  38 81 01 78 */	addi r4, r1, 0x178
/* 805D6CBC  4B C9 A2 30 */	b MtxPosition__FP4cXyzP4cXyz
/* 805D6CC0  38 61 01 78 */	addi r3, r1, 0x178
/* 805D6CC4  38 9F 04 A8 */	addi r4, r31, 0x4a8
/* 805D6CC8  7C 65 1B 78 */	mr r5, r3
/* 805D6CCC  4B D7 03 C4 */	b PSVECAdd
/* 805D6CD0  C0 21 01 7C */	lfs f1, 0x17c(r1)
/* 805D6CD4  C0 1E 05 24 */	lfs f0, 0x524(r30)
/* 805D6CD8  EC 01 00 28 */	fsubs f0, f1, f0
/* 805D6CDC  D0 01 01 7C */	stfs f0, 0x17c(r1)
/* 805D6CE0  C0 01 01 78 */	lfs f0, 0x178(r1)
/* 805D6CE4  D0 1F 2D 14 */	stfs f0, 0x2d14(r31)
/* 805D6CE8  C0 01 01 7C */	lfs f0, 0x17c(r1)
/* 805D6CEC  D0 1F 2D 18 */	stfs f0, 0x2d18(r31)
/* 805D6CF0  C0 01 01 80 */	lfs f0, 0x180(r1)
/* 805D6CF4  D0 1F 2D 1C */	stfs f0, 0x2d1c(r31)
/* 805D6CF8  38 61 00 C4 */	addi r3, r1, 0xc4
/* 805D6CFC  38 9F 04 A8 */	addi r4, r31, 0x4a8
/* 805D6D00  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 805D6D04  4B C8 FE 30 */	b __mi__4cXyzCFRC3Vec
/* 805D6D08  C0 01 00 C4 */	lfs f0, 0xc4(r1)
/* 805D6D0C  D0 01 01 78 */	stfs f0, 0x178(r1)
/* 805D6D10  C0 01 00 C8 */	lfs f0, 0xc8(r1)
/* 805D6D14  D0 01 01 7C */	stfs f0, 0x17c(r1)
/* 805D6D18  C0 01 00 CC */	lfs f0, 0xcc(r1)
/* 805D6D1C  D0 01 01 80 */	stfs f0, 0x180(r1)
/* 805D6D20  38 61 00 B8 */	addi r3, r1, 0xb8
/* 805D6D24  38 9F 07 18 */	addi r4, r31, 0x718
/* 805D6D28  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 805D6D2C  4B C8 FE 08 */	b __mi__4cXyzCFRC3Vec
/* 805D6D30  C0 01 00 B8 */	lfs f0, 0xb8(r1)
/* 805D6D34  D0 01 01 84 */	stfs f0, 0x184(r1)
/* 805D6D38  C0 01 00 BC */	lfs f0, 0xbc(r1)
/* 805D6D3C  D0 01 01 88 */	stfs f0, 0x188(r1)
/* 805D6D40  C0 01 00 C0 */	lfs f0, 0xc0(r1)
/* 805D6D44  D0 01 01 8C */	stfs f0, 0x18c(r1)
/* 805D6D48  3C 60 00 07 */	lis r3, 0x0007 /* 0x000704DB@ha */
/* 805D6D4C  38 03 04 DB */	addi r0, r3, 0x04DB /* 0x000704DB@l */
/* 805D6D50  90 01 00 10 */	stw r0, 0x10(r1)
/* 805D6D54  38 7F 05 DC */	addi r3, r31, 0x5dc
/* 805D6D58  38 81 00 10 */	addi r4, r1, 0x10
/* 805D6D5C  38 A0 00 00 */	li r5, 0
/* 805D6D60  38 C0 FF FF */	li r6, -1
/* 805D6D64  81 9F 05 DC */	lwz r12, 0x5dc(r31)
/* 805D6D68  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 805D6D6C  7D 89 03 A6 */	mtctr r12
/* 805D6D70  4E 80 04 21 */	bctrl 
/* 805D6D74  C0 1E 00 04 */	lfs f0, 4(r30)
/* 805D6D78  D0 1F 05 30 */	stfs f0, 0x530(r31)
/* 805D6D7C  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 805D6D80  A8 1F 04 E4 */	lha r0, 0x4e4(r31)
/* 805D6D84  B0 01 00 14 */	sth r0, 0x14(r1)
/* 805D6D88  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 805D6D8C  B0 01 00 16 */	sth r0, 0x16(r1)
/* 805D6D90  A8 1F 04 E8 */	lha r0, 0x4e8(r31)
/* 805D6D94  B0 01 00 18 */	sth r0, 0x18(r1)
/* 805D6D98  38 00 40 00 */	li r0, 0x4000
/* 805D6D9C  B0 01 00 14 */	sth r0, 0x14(r1)
/* 805D6DA0  38 00 00 00 */	li r0, 0
/* 805D6DA4  B0 01 00 18 */	sth r0, 0x18(r1)
/* 805D6DA8  80 7F 2D F4 */	lwz r3, 0x2df4(r31)
/* 805D6DAC  3C 80 80 5E */	lis r4, eff_smoke_id@ha
/* 805D6DB0  38 84 D4 70 */	addi r4, r4, eff_smoke_id@l
/* 805D6DB4  A0 84 00 02 */	lhz r4, 2(r4)
/* 805D6DB8  38 BF 07 18 */	addi r5, r31, 0x718
/* 805D6DBC  38 C1 00 14 */	addi r6, r1, 0x14
/* 805D6DC0  38 E1 01 6C */	addi r7, r1, 0x16c
/* 805D6DC4  4B FF 8C 91 */	bl dComIfGp_particle_set__FUlUsPC4cXyzPC5csXyzPC4cXyz
/* 805D6DC8  90 7F 2D F4 */	stw r3, 0x2df4(r31)
/* 805D6DCC  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 805D6DD0  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 805D6DD4  38 61 00 AC */	addi r3, r1, 0xac
/* 805D6DD8  38 9F 2D 14 */	addi r4, r31, 0x2d14
/* 805D6DDC  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 805D6DE0  4B C8 FD 54 */	b __mi__4cXyzCFRC3Vec
/* 805D6DE4  C0 01 00 AC */	lfs f0, 0xac(r1)
/* 805D6DE8  D0 01 01 78 */	stfs f0, 0x178(r1)
/* 805D6DEC  C0 01 00 B0 */	lfs f0, 0xb0(r1)
/* 805D6DF0  D0 01 01 7C */	stfs f0, 0x17c(r1)
/* 805D6DF4  C0 01 00 B4 */	lfs f0, 0xb4(r1)
/* 805D6DF8  D0 01 01 80 */	stfs f0, 0x180(r1)
/* 805D6DFC  C0 3F 2D 18 */	lfs f1, 0x2d18(r31)
/* 805D6E00  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 805D6E04  EC 01 00 28 */	fsubs f0, f1, f0
/* 805D6E08  D0 01 01 7C */	stfs f0, 0x17c(r1)
/* 805D6E0C  38 61 01 78 */	addi r3, r1, 0x178
/* 805D6E10  4B C9 03 18 */	b atan2sX_Z__4cXyzCFv
/* 805D6E14  38 03 F8 00 */	addi r0, r3, -2048
/* 805D6E18  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 805D6E1C  38 61 01 78 */	addi r3, r1, 0x178
/* 805D6E20  4B C9 03 30 */	b atan2sY_XZ__4cXyzCFv
/* 805D6E24  B0 7F 04 DC */	sth r3, 0x4dc(r31)
/* 805D6E28  38 00 00 0A */	li r0, 0xa
/* 805D6E2C  90 1F 08 1C */	stw r0, 0x81c(r31)
/* 805D6E30  C0 3E 00 04 */	lfs f1, 4(r30)
/* 805D6E34  D0 21 00 A0 */	stfs f1, 0xa0(r1)
/* 805D6E38  C0 1E 00 08 */	lfs f0, 8(r30)
/* 805D6E3C  D0 01 00 A4 */	stfs f0, 0xa4(r1)
/* 805D6E40  D0 21 00 A8 */	stfs f1, 0xa8(r1)
/* 805D6E44  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805D6E48  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 805D6E4C  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 805D6E50  38 80 00 06 */	li r4, 6
/* 805D6E54  38 A0 00 4F */	li r5, 0x4f
/* 805D6E58  38 C1 00 A0 */	addi r6, r1, 0xa0
/* 805D6E5C  4B A9 8B C8 */	b StartShock__12dVibration_cFii4cXyz
/* 805D6E60  80 7F 06 84 */	lwz r3, 0x684(r31)
/* 805D6E64  38 03 00 01 */	addi r0, r3, 1
/* 805D6E68  90 1F 06 84 */	stw r0, 0x684(r31)
/* 805D6E6C  48 00 0C 18 */	b lbl_805D7A84
lbl_805D6E70:
/* 805D6E70  C0 1E 02 F0 */	lfs f0, 0x2f0(r30)
/* 805D6E74  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 805D6E78  C0 1E 00 68 */	lfs f0, 0x68(r30)
/* 805D6E7C  D0 1F 08 00 */	stfs f0, 0x800(r31)
/* 805D6E80  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 805D6E84  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 805D6E88  80 63 00 00 */	lwz r3, 0(r3)
/* 805D6E8C  A8 9F 04 DE */	lha r4, 0x4de(r31)
/* 805D6E90  4B A3 55 4C */	b mDoMtx_YrotS__FPA4_fs
/* 805D6E94  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 805D6E98  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 805D6E9C  80 63 00 00 */	lwz r3, 0(r3)
/* 805D6EA0  A8 9F 04 DC */	lha r4, 0x4dc(r31)
/* 805D6EA4  4B A3 54 F8 */	b mDoMtx_XrotM__FPA4_fs
/* 805D6EA8  C0 1E 00 04 */	lfs f0, 4(r30)
/* 805D6EAC  D0 01 01 84 */	stfs f0, 0x184(r1)
/* 805D6EB0  D0 01 01 88 */	stfs f0, 0x188(r1)
/* 805D6EB4  C0 1F 05 2C */	lfs f0, 0x52c(r31)
/* 805D6EB8  D0 01 01 8C */	stfs f0, 0x18c(r1)
/* 805D6EBC  38 61 01 84 */	addi r3, r1, 0x184
/* 805D6EC0  38 81 01 78 */	addi r4, r1, 0x178
/* 805D6EC4  4B C9 A0 28 */	b MtxPosition__FP4cXyzP4cXyz
/* 805D6EC8  C0 01 01 7C */	lfs f0, 0x17c(r1)
/* 805D6ECC  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 805D6ED0  38 7F 04 E6 */	addi r3, r31, 0x4e6
/* 805D6ED4  A8 9F 04 DE */	lha r4, 0x4de(r31)
/* 805D6ED8  38 A0 00 14 */	li r5, 0x14
/* 805D6EDC  38 C0 01 00 */	li r6, 0x100
/* 805D6EE0  4B C9 97 28 */	b cLib_addCalcAngleS2__FPssss
/* 805D6EE4  38 7F 04 E4 */	addi r3, r31, 0x4e4
/* 805D6EE8  A8 9F 04 DC */	lha r4, 0x4dc(r31)
/* 805D6EEC  38 A0 00 14 */	li r5, 0x14
/* 805D6EF0  38 C0 01 00 */	li r6, 0x100
/* 805D6EF4  4B C9 97 14 */	b cLib_addCalcAngleS2__FPssss
/* 805D6EF8  38 7F 08 1C */	addi r3, r31, 0x81c
/* 805D6EFC  48 00 59 E9 */	bl func_805DC8E4
/* 805D6F00  2C 03 00 00 */	cmpwi r3, 0
/* 805D6F04  40 82 0B 80 */	bne lbl_805D7A84
/* 805D6F08  80 7F 06 84 */	lwz r3, 0x684(r31)
/* 805D6F0C  38 03 00 01 */	addi r0, r3, 1
/* 805D6F10  90 1F 06 84 */	stw r0, 0x684(r31)
/* 805D6F14  48 00 0B 70 */	b lbl_805D7A84
lbl_805D6F18:
/* 805D6F18  80 1F 08 DC */	lwz r0, 0x8dc(r31)
/* 805D6F1C  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 805D6F20  41 82 0B 64 */	beq lbl_805D7A84
/* 805D6F24  C0 1E 00 70 */	lfs f0, 0x70(r30)
/* 805D6F28  D0 1F 08 00 */	stfs f0, 0x800(r31)
/* 805D6F2C  C0 3E 00 04 */	lfs f1, 4(r30)
/* 805D6F30  D0 21 00 94 */	stfs f1, 0x94(r1)
/* 805D6F34  C0 1E 00 08 */	lfs f0, 8(r30)
/* 805D6F38  D0 01 00 98 */	stfs f0, 0x98(r1)
/* 805D6F3C  D0 21 00 9C */	stfs f1, 0x9c(r1)
/* 805D6F40  38 64 5B D4 */	addi r3, r4, 0x5bd4
/* 805D6F44  38 80 00 05 */	li r4, 5
/* 805D6F48  38 A0 00 4F */	li r5, 0x4f
/* 805D6F4C  38 C1 00 94 */	addi r6, r1, 0x94
/* 805D6F50  4B A9 8A D4 */	b StartShock__12dVibration_cFii4cXyz
/* 805D6F54  C0 1E 02 F0 */	lfs f0, 0x2f0(r30)
/* 805D6F58  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 805D6F5C  C0 1E 04 F4 */	lfs f0, 0x4f4(r30)
/* 805D6F60  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 805D6F64  C0 1E 01 48 */	lfs f0, 0x148(r30)
/* 805D6F68  D0 1F 05 30 */	stfs f0, 0x530(r31)
/* 805D6F6C  80 7F 06 84 */	lwz r3, 0x684(r31)
/* 805D6F70  38 03 00 01 */	addi r0, r3, 1
/* 805D6F74  90 1F 06 84 */	stw r0, 0x684(r31)
/* 805D6F78  48 00 0B 0C */	b lbl_805D7A84
lbl_805D6F7C:
/* 805D6F7C  C0 1E 00 04 */	lfs f0, 4(r30)
/* 805D6F80  D0 01 01 78 */	stfs f0, 0x178(r1)
/* 805D6F84  D0 01 01 7C */	stfs f0, 0x17c(r1)
/* 805D6F88  D0 01 01 80 */	stfs f0, 0x180(r1)
/* 805D6F8C  C0 3F 09 48 */	lfs f1, 0x948(r31)
/* 805D6F90  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 805D6F94  EC 01 00 28 */	fsubs f0, f1, f0
/* 805D6F98  D0 01 01 7C */	stfs f0, 0x17c(r1)
/* 805D6F9C  38 61 01 78 */	addi r3, r1, 0x178
/* 805D6FA0  4B C9 01 B0 */	b atan2sY_XZ__4cXyzCFv
/* 805D6FA4  B0 7F 04 DC */	sth r3, 0x4dc(r31)
/* 805D6FA8  38 7F 04 E4 */	addi r3, r31, 0x4e4
/* 805D6FAC  38 80 00 00 */	li r4, 0
/* 805D6FB0  38 A0 00 08 */	li r5, 8
/* 805D6FB4  38 C0 02 00 */	li r6, 0x200
/* 805D6FB8  4B C9 96 50 */	b cLib_addCalcAngleS2__FPssss
/* 805D6FBC  38 7F 04 E8 */	addi r3, r31, 0x4e8
/* 805D6FC0  38 80 C0 00 */	li r4, -16384
/* 805D6FC4  38 A0 00 0A */	li r5, 0xa
/* 805D6FC8  38 C0 02 00 */	li r6, 0x200
/* 805D6FCC  4B C9 96 3C */	b cLib_addCalcAngleS2__FPssss
/* 805D6FD0  80 1F 08 DC */	lwz r0, 0x8dc(r31)
/* 805D6FD4  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 805D6FD8  41 82 0A AC */	beq lbl_805D7A84
/* 805D6FDC  C0 3E 00 04 */	lfs f1, 4(r30)
/* 805D6FE0  D0 21 00 88 */	stfs f1, 0x88(r1)
/* 805D6FE4  C0 1E 00 08 */	lfs f0, 8(r30)
/* 805D6FE8  D0 01 00 8C */	stfs f0, 0x8c(r1)
/* 805D6FEC  D0 21 00 90 */	stfs f1, 0x90(r1)
/* 805D6FF0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805D6FF4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 805D6FF8  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 805D6FFC  38 80 00 04 */	li r4, 4
/* 805D7000  38 A0 00 4F */	li r5, 0x4f
/* 805D7004  38 C1 00 88 */	addi r6, r1, 0x88
/* 805D7008  4B A9 8A 1C */	b StartShock__12dVibration_cFii4cXyz
/* 805D700C  A8 7F 04 DE */	lha r3, 0x4de(r31)
/* 805D7010  38 03 E7 D0 */	addi r0, r3, -6192
/* 805D7014  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 805D7018  C0 1E 00 68 */	lfs f0, 0x68(r30)
/* 805D701C  D0 1F 08 00 */	stfs f0, 0x800(r31)
/* 805D7020  C0 1E 00 44 */	lfs f0, 0x44(r30)
/* 805D7024  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 805D7028  C0 1E 02 F0 */	lfs f0, 0x2f0(r30)
/* 805D702C  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 805D7030  C0 1E 01 48 */	lfs f0, 0x148(r30)
/* 805D7034  D0 1F 05 30 */	stfs f0, 0x530(r31)
/* 805D7038  38 00 00 0A */	li r0, 0xa
/* 805D703C  90 1F 06 84 */	stw r0, 0x684(r31)
/* 805D7040  48 00 0A 44 */	b lbl_805D7A84
lbl_805D7044:
/* 805D7044  38 7F 04 E8 */	addi r3, r31, 0x4e8
/* 805D7048  38 80 C0 00 */	li r4, -16384
/* 805D704C  38 A0 00 0A */	li r5, 0xa
/* 805D7050  38 C0 02 00 */	li r6, 0x200
/* 805D7054  4B C9 95 B4 */	b cLib_addCalcAngleS2__FPssss
/* 805D7058  80 1F 08 DC */	lwz r0, 0x8dc(r31)
/* 805D705C  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 805D7060  41 82 0A 24 */	beq lbl_805D7A84
/* 805D7064  C0 3E 00 04 */	lfs f1, 4(r30)
/* 805D7068  D0 21 00 7C */	stfs f1, 0x7c(r1)
/* 805D706C  C0 1E 00 08 */	lfs f0, 8(r30)
/* 805D7070  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 805D7074  D0 21 00 84 */	stfs f1, 0x84(r1)
/* 805D7078  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805D707C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 805D7080  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 805D7084  38 80 00 03 */	li r4, 3
/* 805D7088  38 A0 00 4F */	li r5, 0x4f
/* 805D708C  38 C1 00 7C */	addi r6, r1, 0x7c
/* 805D7090  4B A9 89 94 */	b StartShock__12dVibration_cFii4cXyz
/* 805D7094  80 7F 06 84 */	lwz r3, 0x684(r31)
/* 805D7098  38 03 00 01 */	addi r0, r3, 1
/* 805D709C  90 1F 06 84 */	stw r0, 0x684(r31)
/* 805D70A0  48 00 09 E4 */	b lbl_805D7A84
lbl_805D70A4:
/* 805D70A4  2C 05 00 0F */	cmpwi r5, 0xf
/* 805D70A8  41 82 00 20 */	beq lbl_805D70C8
/* 805D70AC  C0 1E 02 44 */	lfs f0, 0x244(r30)
/* 805D70B0  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 805D70B4  C0 1E 02 B4 */	lfs f0, 0x2b4(r30)
/* 805D70B8  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 805D70BC  C0 1E 01 48 */	lfs f0, 0x148(r30)
/* 805D70C0  D0 1F 05 30 */	stfs f0, 0x530(r31)
/* 805D70C4  48 00 00 0C */	b lbl_805D70D0
lbl_805D70C8:
/* 805D70C8  38 00 00 28 */	li r0, 0x28
/* 805D70CC  90 1F 08 1C */	stw r0, 0x81c(r31)
lbl_805D70D0:
/* 805D70D0  80 7F 06 84 */	lwz r3, 0x684(r31)
/* 805D70D4  38 03 00 01 */	addi r0, r3, 1
/* 805D70D8  90 1F 06 84 */	stw r0, 0x684(r31)
/* 805D70DC  48 00 09 A8 */	b lbl_805D7A84
lbl_805D70E0:
/* 805D70E0  38 7F 08 1C */	addi r3, r31, 0x81c
/* 805D70E4  48 00 58 01 */	bl func_805DC8E4
/* 805D70E8  2C 03 00 00 */	cmpwi r3, 0
/* 805D70EC  40 82 09 98 */	bne lbl_805D7A84
/* 805D70F0  C0 1E 00 04 */	lfs f0, 4(r30)
/* 805D70F4  D0 1F 05 30 */	stfs f0, 0x530(r31)
/* 805D70F8  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 805D70FC  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 805D7100  38 61 00 70 */	addi r3, r1, 0x70
/* 805D7104  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 805D7108  38 BF 04 A8 */	addi r5, r31, 0x4a8
/* 805D710C  4B C8 FA 28 */	b __mi__4cXyzCFRC3Vec
/* 805D7110  C0 01 00 70 */	lfs f0, 0x70(r1)
/* 805D7114  D0 01 01 78 */	stfs f0, 0x178(r1)
/* 805D7118  C0 01 00 74 */	lfs f0, 0x74(r1)
/* 805D711C  D0 01 01 7C */	stfs f0, 0x17c(r1)
/* 805D7120  C0 01 00 78 */	lfs f0, 0x78(r1)
/* 805D7124  D0 01 01 80 */	stfs f0, 0x180(r1)
/* 805D7128  38 61 01 78 */	addi r3, r1, 0x178
/* 805D712C  4B C8 FF FC */	b atan2sX_Z__4cXyzCFv
/* 805D7130  38 03 20 00 */	addi r0, r3, 0x2000
/* 805D7134  7C 04 07 34 */	extsh r4, r0
/* 805D7138  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 805D713C  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 805D7140  80 63 00 00 */	lwz r3, 0(r3)
/* 805D7144  4B A3 52 98 */	b mDoMtx_YrotS__FPA4_fs
/* 805D7148  C0 1E 00 04 */	lfs f0, 4(r30)
/* 805D714C  D0 01 01 84 */	stfs f0, 0x184(r1)
/* 805D7150  D0 01 01 88 */	stfs f0, 0x188(r1)
/* 805D7154  38 61 01 78 */	addi r3, r1, 0x178
/* 805D7158  4B FF 89 7D */	bl abs__4cXyzCFv
/* 805D715C  C0 1E 00 34 */	lfs f0, 0x34(r30)
/* 805D7160  EC 01 00 28 */	fsubs f0, f1, f0
/* 805D7164  D0 01 01 8C */	stfs f0, 0x18c(r1)
/* 805D7168  38 61 01 84 */	addi r3, r1, 0x184
/* 805D716C  38 81 01 78 */	addi r4, r1, 0x178
/* 805D7170  4B C9 9D 7C */	b MtxPosition__FP4cXyzP4cXyz
/* 805D7174  38 61 01 78 */	addi r3, r1, 0x178
/* 805D7178  38 9F 04 A8 */	addi r4, r31, 0x4a8
/* 805D717C  7C 65 1B 78 */	mr r5, r3
/* 805D7180  4B D6 FF 10 */	b PSVECAdd
/* 805D7184  C0 1E 03 DC */	lfs f0, 0x3dc(r30)
/* 805D7188  D0 01 01 7C */	stfs f0, 0x17c(r1)
/* 805D718C  7F E3 FB 78 */	mr r3, r31
/* 805D7190  38 81 01 78 */	addi r4, r1, 0x178
/* 805D7194  38 A0 00 31 */	li r5, 0x31
/* 805D7198  38 C0 00 00 */	li r6, 0
/* 805D719C  38 E0 00 FF */	li r7, 0xff
/* 805D71A0  4B A4 59 38 */	b fopAcM_createDisappear__FPC10fopAc_ac_cPC4cXyzUcUcUc
/* 805D71A4  C0 3E 00 04 */	lfs f1, 4(r30)
/* 805D71A8  D0 21 00 64 */	stfs f1, 0x64(r1)
/* 805D71AC  C0 1E 00 08 */	lfs f0, 8(r30)
/* 805D71B0  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 805D71B4  D0 21 00 6C */	stfs f1, 0x6c(r1)
/* 805D71B8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805D71BC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 805D71C0  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 805D71C4  38 80 00 07 */	li r4, 7
/* 805D71C8  38 A0 00 4F */	li r5, 0x4f
/* 805D71CC  38 C1 00 64 */	addi r6, r1, 0x64
/* 805D71D0  4B A9 88 54 */	b StartShock__12dVibration_cFii4cXyz
/* 805D71D4  3C 60 00 07 */	lis r3, 0x0007 /* 0x000704DC@ha */
/* 805D71D8  38 03 04 DC */	addi r0, r3, 0x04DC /* 0x000704DC@l */
/* 805D71DC  90 01 00 0C */	stw r0, 0xc(r1)
/* 805D71E0  38 7F 05 DC */	addi r3, r31, 0x5dc
/* 805D71E4  38 81 00 0C */	addi r4, r1, 0xc
/* 805D71E8  38 A0 00 00 */	li r5, 0
/* 805D71EC  38 C0 FF FF */	li r6, -1
/* 805D71F0  81 9F 05 DC */	lwz r12, 0x5dc(r31)
/* 805D71F4  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 805D71F8  7D 89 03 A6 */	mtctr r12
/* 805D71FC  4E 80 04 21 */	bctrl 
/* 805D7200  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805D7204  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 805D7208  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 805D720C  38 80 00 04 */	li r4, 4
/* 805D7210  38 A0 00 01 */	li r5, 1
/* 805D7214  38 C0 00 00 */	li r6, 0
/* 805D7218  38 E0 00 00 */	li r7, 0
/* 805D721C  48 00 57 C1 */	bl changeDemoMode__9daPy_py_cFUliis
/* 805D7220  38 00 00 50 */	li r0, 0x50
/* 805D7224  90 1F 08 1C */	stw r0, 0x81c(r31)
/* 805D7228  80 7F 06 84 */	lwz r3, 0x684(r31)
/* 805D722C  38 03 00 01 */	addi r0, r3, 1
/* 805D7230  90 1F 06 84 */	stw r0, 0x684(r31)
lbl_805D7234:
/* 805D7234  38 7F 08 1C */	addi r3, r31, 0x81c
/* 805D7238  48 00 56 AD */	bl func_805DC8E4
/* 805D723C  2C 03 00 00 */	cmpwi r3, 0
/* 805D7240  40 82 08 44 */	bne lbl_805D7A84
/* 805D7244  38 00 00 01 */	li r0, 1
/* 805D7248  98 1F 08 50 */	stb r0, 0x850(r31)
/* 805D724C  38 00 00 00 */	li r0, 0
/* 805D7250  B0 1F 04 E4 */	sth r0, 0x4e4(r31)
/* 805D7254  B0 1F 04 E8 */	sth r0, 0x4e8(r31)
/* 805D7258  C0 1E 00 04 */	lfs f0, 4(r30)
/* 805D725C  D0 01 01 78 */	stfs f0, 0x178(r1)
/* 805D7260  C0 1E 01 20 */	lfs f0, 0x120(r30)
/* 805D7264  D0 01 01 7C */	stfs f0, 0x17c(r1)
/* 805D7268  C0 1E 05 28 */	lfs f0, 0x528(r30)
/* 805D726C  D0 01 01 80 */	stfs f0, 0x180(r1)
/* 805D7270  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805D7274  3B 43 61 C0 */	addi r26, r3, g_dComIfG_gameInfo@l
/* 805D7278  80 7A 5D AC */	lwz r3, 0x5dac(r26)
/* 805D727C  38 80 00 02 */	li r4, 2
/* 805D7280  38 A0 00 00 */	li r5, 0
/* 805D7284  38 C0 00 00 */	li r6, 0
/* 805D7288  38 E0 00 00 */	li r7, 0
/* 805D728C  48 00 57 51 */	bl changeDemoMode__9daPy_py_cFUliis
/* 805D7290  80 7A 5D AC */	lwz r3, 0x5dac(r26)
/* 805D7294  38 81 01 78 */	addi r4, r1, 0x178
/* 805D7298  38 A0 80 00 */	li r5, -32768
/* 805D729C  38 C0 00 00 */	li r6, 0
/* 805D72A0  81 83 06 28 */	lwz r12, 0x628(r3)
/* 805D72A4  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 805D72A8  7D 89 03 A6 */	mtctr r12
/* 805D72AC  4E 80 04 21 */	bctrl 
/* 805D72B0  C0 1E 00 04 */	lfs f0, 4(r30)
/* 805D72B4  D0 01 01 84 */	stfs f0, 0x184(r1)
/* 805D72B8  C0 1E 01 20 */	lfs f0, 0x120(r30)
/* 805D72BC  D0 01 01 88 */	stfs f0, 0x188(r1)
/* 805D72C0  C0 1E 05 2C */	lfs f0, 0x52c(r30)
/* 805D72C4  D0 01 01 8C */	stfs f0, 0x18c(r1)
/* 805D72C8  38 61 00 58 */	addi r3, r1, 0x58
/* 805D72CC  38 81 01 84 */	addi r4, r1, 0x184
/* 805D72D0  38 BF 04 A8 */	addi r5, r31, 0x4a8
/* 805D72D4  4B C8 F8 60 */	b __mi__4cXyzCFRC3Vec
/* 805D72D8  C0 01 00 58 */	lfs f0, 0x58(r1)
/* 805D72DC  D0 01 01 78 */	stfs f0, 0x178(r1)
/* 805D72E0  C0 01 00 5C */	lfs f0, 0x5c(r1)
/* 805D72E4  D0 01 01 7C */	stfs f0, 0x17c(r1)
/* 805D72E8  C0 01 00 60 */	lfs f0, 0x60(r1)
/* 805D72EC  D0 01 01 80 */	stfs f0, 0x180(r1)
/* 805D72F0  C0 1E 00 04 */	lfs f0, 4(r30)
/* 805D72F4  D0 01 01 7C */	stfs f0, 0x17c(r1)
/* 805D72F8  38 61 01 78 */	addi r3, r1, 0x178
/* 805D72FC  4B C8 FE 2C */	b atan2sX_Z__4cXyzCFv
/* 805D7300  7C 64 07 34 */	extsh r4, r3
/* 805D7304  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 805D7308  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 805D730C  80 63 00 00 */	lwz r3, 0(r3)
/* 805D7310  4B A3 50 CC */	b mDoMtx_YrotS__FPA4_fs
/* 805D7314  C0 1E 00 04 */	lfs f0, 4(r30)
/* 805D7318  D0 01 01 84 */	stfs f0, 0x184(r1)
/* 805D731C  C0 1E 04 AC */	lfs f0, 0x4ac(r30)
/* 805D7320  D0 01 01 88 */	stfs f0, 0x188(r1)
/* 805D7324  3B 5D 00 4C */	addi r26, r29, 0x4c
/* 805D7328  C0 3A 00 1C */	lfs f1, 0x1c(r26)
/* 805D732C  C0 1E 02 78 */	lfs f0, 0x278(r30)
/* 805D7330  EC 01 00 28 */	fsubs f0, f1, f0
/* 805D7334  D0 01 01 8C */	stfs f0, 0x18c(r1)
/* 805D7338  38 61 01 84 */	addi r3, r1, 0x184
/* 805D733C  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 805D7340  4B C9 9B AC */	b MtxPosition__FP4cXyzP4cXyz
/* 805D7344  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 805D7348  38 9F 04 A8 */	addi r4, r31, 0x4a8
/* 805D734C  7C 65 1B 78 */	mr r5, r3
/* 805D7350  4B D6 FD 40 */	b PSVECAdd
/* 805D7354  38 00 40 00 */	li r0, 0x4000
/* 805D7358  B0 1F 04 E6 */	sth r0, 0x4e6(r31)
/* 805D735C  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 805D7360  D0 1F 2D 20 */	stfs f0, 0x2d20(r31)
/* 805D7364  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 805D7368  D0 1F 2D 24 */	stfs f0, 0x2d24(r31)
/* 805D736C  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 805D7370  D0 1F 2D 28 */	stfs f0, 0x2d28(r31)
/* 805D7374  38 7D 06 E8 */	addi r3, r29, 0x6e8
/* 805D7378  C0 03 00 04 */	lfs f0, 4(r3)
/* 805D737C  D0 1F 2D 24 */	stfs f0, 0x2d24(r31)
/* 805D7380  C0 3D 07 1C */	lfs f1, 0x71c(r29)
/* 805D7384  D0 21 01 78 */	stfs f1, 0x178(r1)
/* 805D7388  38 7D 07 1C */	addi r3, r29, 0x71c
/* 805D738C  C0 03 00 04 */	lfs f0, 4(r3)
/* 805D7390  D0 01 01 7C */	stfs f0, 0x17c(r1)
/* 805D7394  C0 03 00 08 */	lfs f0, 8(r3)
/* 805D7398  D0 01 01 80 */	stfs f0, 0x180(r1)
/* 805D739C  D0 3F 2D 14 */	stfs f1, 0x2d14(r31)
/* 805D73A0  C0 01 01 7C */	lfs f0, 0x17c(r1)
/* 805D73A4  D0 1F 2D 18 */	stfs f0, 0x2d18(r31)
/* 805D73A8  C0 01 01 80 */	lfs f0, 0x180(r1)
/* 805D73AC  D0 1F 2D 1C */	stfs f0, 0x2d1c(r31)
/* 805D73B0  C0 1E 05 30 */	lfs f0, 0x530(r30)
/* 805D73B4  D0 1F 2D 2C */	stfs f0, 0x2d2c(r31)
/* 805D73B8  38 00 C0 00 */	li r0, -16384
/* 805D73BC  B0 1F 04 DC */	sth r0, 0x4dc(r31)
/* 805D73C0  C0 1E 00 04 */	lfs f0, 4(r30)
/* 805D73C4  D0 01 01 84 */	stfs f0, 0x184(r1)
/* 805D73C8  C0 1E 01 20 */	lfs f0, 0x120(r30)
/* 805D73CC  D0 01 01 88 */	stfs f0, 0x188(r1)
/* 805D73D0  C0 1E 05 2C */	lfs f0, 0x52c(r30)
/* 805D73D4  D0 01 01 8C */	stfs f0, 0x18c(r1)
/* 805D73D8  38 61 00 4C */	addi r3, r1, 0x4c
/* 805D73DC  38 81 01 84 */	addi r4, r1, 0x184
/* 805D73E0  38 BF 04 A8 */	addi r5, r31, 0x4a8
/* 805D73E4  4B C8 F7 50 */	b __mi__4cXyzCFRC3Vec
/* 805D73E8  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 805D73EC  D0 01 01 78 */	stfs f0, 0x178(r1)
/* 805D73F0  C0 01 00 50 */	lfs f0, 0x50(r1)
/* 805D73F4  D0 01 01 7C */	stfs f0, 0x17c(r1)
/* 805D73F8  C0 01 00 54 */	lfs f0, 0x54(r1)
/* 805D73FC  D0 01 01 80 */	stfs f0, 0x180(r1)
/* 805D7400  C0 1E 00 04 */	lfs f0, 4(r30)
/* 805D7404  D0 01 01 7C */	stfs f0, 0x17c(r1)
/* 805D7408  38 61 01 78 */	addi r3, r1, 0x178
/* 805D740C  4B C8 FD 1C */	b atan2sX_Z__4cXyzCFv
/* 805D7410  7C 64 07 34 */	extsh r4, r3
/* 805D7414  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 805D7418  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 805D741C  80 63 00 00 */	lwz r3, 0(r3)
/* 805D7420  4B A3 4F BC */	b mDoMtx_YrotS__FPA4_fs
/* 805D7424  C0 1E 00 04 */	lfs f0, 4(r30)
/* 805D7428  D0 01 01 84 */	stfs f0, 0x184(r1)
/* 805D742C  D0 01 01 88 */	stfs f0, 0x188(r1)
/* 805D7430  C0 3A 00 1C */	lfs f1, 0x1c(r26)
/* 805D7434  C0 1E 03 CC */	lfs f0, 0x3cc(r30)
/* 805D7438  EC 01 00 28 */	fsubs f0, f1, f0
/* 805D743C  D0 01 01 8C */	stfs f0, 0x18c(r1)
/* 805D7440  38 61 01 84 */	addi r3, r1, 0x184
/* 805D7444  38 9F 07 18 */	addi r4, r31, 0x718
/* 805D7448  4B C9 9A A4 */	b MtxPosition__FP4cXyzP4cXyz
/* 805D744C  38 7F 07 18 */	addi r3, r31, 0x718
/* 805D7450  38 9F 04 A8 */	addi r4, r31, 0x4a8
/* 805D7454  7C 65 1B 78 */	mr r5, r3
/* 805D7458  4B D6 FC 38 */	b PSVECAdd
/* 805D745C  38 61 00 40 */	addi r3, r1, 0x40
/* 805D7460  38 9F 07 18 */	addi r4, r31, 0x718
/* 805D7464  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 805D7468  4B C8 F6 CC */	b __mi__4cXyzCFRC3Vec
/* 805D746C  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 805D7470  D0 01 01 78 */	stfs f0, 0x178(r1)
/* 805D7474  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 805D7478  D0 01 01 7C */	stfs f0, 0x17c(r1)
/* 805D747C  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 805D7480  D0 01 01 80 */	stfs f0, 0x180(r1)
/* 805D7484  38 61 01 78 */	addi r3, r1, 0x178
/* 805D7488  4B C8 FC A0 */	b atan2sX_Z__4cXyzCFv
/* 805D748C  B0 7F 04 DE */	sth r3, 0x4de(r31)
/* 805D7490  38 00 00 50 */	li r0, 0x50
/* 805D7494  90 1F 08 1C */	stw r0, 0x81c(r31)
/* 805D7498  38 00 00 14 */	li r0, 0x14
/* 805D749C  90 1F 06 84 */	stw r0, 0x684(r31)
lbl_805D74A0:
/* 805D74A0  C0 3E 00 04 */	lfs f1, 4(r30)
/* 805D74A4  D0 21 01 78 */	stfs f1, 0x178(r1)
/* 805D74A8  C0 1E 01 20 */	lfs f0, 0x120(r30)
/* 805D74AC  D0 01 01 7C */	stfs f0, 0x17c(r1)
/* 805D74B0  C0 1E 05 2C */	lfs f0, 0x52c(r30)
/* 805D74B4  D0 01 01 80 */	stfs f0, 0x180(r1)
/* 805D74B8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805D74BC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 805D74C0  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 805D74C4  D0 23 06 1C */	stfs f1, 0x61c(r3)
/* 805D74C8  C0 01 01 7C */	lfs f0, 0x17c(r1)
/* 805D74CC  D0 03 06 20 */	stfs f0, 0x620(r3)
/* 805D74D0  C0 01 01 80 */	lfs f0, 0x180(r1)
/* 805D74D4  D0 03 06 24 */	stfs f0, 0x624(r3)
/* 805D74D8  38 7F 08 1C */	addi r3, r31, 0x81c
/* 805D74DC  48 00 54 09 */	bl func_805DC8E4
/* 805D74E0  2C 03 00 00 */	cmpwi r3, 0
/* 805D74E4  40 82 05 A0 */	bne lbl_805D7A84
/* 805D74E8  3C 60 00 08 */	lis r3, 0x0008 /* 0x0008027C@ha */
/* 805D74EC  38 03 02 7C */	addi r0, r3, 0x027C /* 0x0008027C@l */
/* 805D74F0  90 01 00 08 */	stw r0, 8(r1)
/* 805D74F4  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 805D74F8  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 805D74FC  80 63 00 00 */	lwz r3, 0(r3)
/* 805D7500  38 81 00 08 */	addi r4, r1, 8
/* 805D7504  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 805D7508  38 C0 00 00 */	li r6, 0
/* 805D750C  38 E0 00 00 */	li r7, 0
/* 805D7510  C0 3E 00 08 */	lfs f1, 8(r30)
/* 805D7514  FC 40 08 90 */	fmr f2, f1
/* 805D7518  C0 7E 00 58 */	lfs f3, 0x58(r30)
/* 805D751C  FC 80 18 90 */	fmr f4, f3
/* 805D7520  39 00 00 00 */	li r8, 0
/* 805D7524  4B CD 44 60 */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 805D7528  80 7F 06 84 */	lwz r3, 0x684(r31)
/* 805D752C  38 03 00 01 */	addi r0, r3, 1
/* 805D7530  90 1F 06 84 */	stw r0, 0x684(r31)
lbl_805D7534:
/* 805D7534  A8 7F 04 E8 */	lha r3, 0x4e8(r31)
/* 805D7538  38 03 20 00 */	addi r0, r3, 0x2000
/* 805D753C  B0 1F 04 E8 */	sth r0, 0x4e8(r31)
/* 805D7540  38 7F 04 DC */	addi r3, r31, 0x4dc
/* 805D7544  38 80 40 00 */	li r4, 0x4000
/* 805D7548  38 A0 00 64 */	li r5, 0x64
/* 805D754C  38 C0 00 C8 */	li r6, 0xc8
/* 805D7550  4B C9 90 B8 */	b cLib_addCalcAngleS2__FPssss
/* 805D7554  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 805D7558  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 805D755C  80 63 00 00 */	lwz r3, 0(r3)
/* 805D7560  A8 9F 04 DE */	lha r4, 0x4de(r31)
/* 805D7564  4B A3 4E 78 */	b mDoMtx_YrotS__FPA4_fs
/* 805D7568  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 805D756C  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 805D7570  80 63 00 00 */	lwz r3, 0(r3)
/* 805D7574  A8 9F 04 DC */	lha r4, 0x4dc(r31)
/* 805D7578  4B A3 4E 24 */	b mDoMtx_XrotM__FPA4_fs
/* 805D757C  C0 1E 00 04 */	lfs f0, 4(r30)
/* 805D7580  D0 01 01 84 */	stfs f0, 0x184(r1)
/* 805D7584  D0 01 01 88 */	stfs f0, 0x188(r1)
/* 805D7588  C0 1E 02 BC */	lfs f0, 0x2bc(r30)
/* 805D758C  D0 01 01 8C */	stfs f0, 0x18c(r1)
/* 805D7590  38 61 01 84 */	addi r3, r1, 0x184
/* 805D7594  38 81 01 78 */	addi r4, r1, 0x178
/* 805D7598  4B C9 99 54 */	b MtxPosition__FP4cXyzP4cXyz
/* 805D759C  C0 01 01 7C */	lfs f0, 0x17c(r1)
/* 805D75A0  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 805D75A4  C0 3F 04 FC */	lfs f1, 0x4fc(r31)
/* 805D75A8  C0 1E 00 04 */	lfs f0, 4(r30)
/* 805D75AC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805D75B0  40 80 00 10 */	bge lbl_805D75C0
/* 805D75B4  C0 1E 02 B0 */	lfs f0, 0x2b0(r30)
/* 805D75B8  EC 01 00 32 */	fmuls f0, f1, f0
/* 805D75BC  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
lbl_805D75C0:
/* 805D75C0  A8 7F 04 DC */	lha r3, 0x4dc(r31)
/* 805D75C4  4B D8 DB 0C */	b abs
/* 805D75C8  2C 03 20 00 */	cmpwi r3, 0x2000
/* 805D75CC  40 81 00 18 */	ble lbl_805D75E4
/* 805D75D0  38 7F 05 2C */	addi r3, r31, 0x52c
/* 805D75D4  C0 3E 02 B8 */	lfs f1, 0x2b8(r30)
/* 805D75D8  C0 5E 00 88 */	lfs f2, 0x88(r30)
/* 805D75DC  C0 7E 02 8C */	lfs f3, 0x28c(r30)
/* 805D75E0  4B C9 84 5C */	b cLib_addCalc2__FPffff
lbl_805D75E4:
/* 805D75E4  C0 3F 04 FC */	lfs f1, 0x4fc(r31)
/* 805D75E8  C0 1E 00 04 */	lfs f0, 4(r30)
/* 805D75EC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805D75F0  40 80 04 94 */	bge lbl_805D7A84
/* 805D75F4  C0 3F 04 D4 */	lfs f1, 0x4d4(r31)
/* 805D75F8  C0 1E 04 58 */	lfs f0, 0x458(r30)
/* 805D75FC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805D7600  4C 40 13 82 */	cror 2, 0, 2
/* 805D7604  40 82 04 80 */	bne lbl_805D7A84
/* 805D7608  80 7F 06 84 */	lwz r3, 0x684(r31)
/* 805D760C  38 03 00 01 */	addi r0, r3, 1
/* 805D7610  90 1F 06 84 */	stw r0, 0x684(r31)
/* 805D7614  48 00 04 70 */	b lbl_805D7A84
lbl_805D7618:
/* 805D7618  A8 7F 04 E8 */	lha r3, 0x4e8(r31)
/* 805D761C  7C 60 07 35 */	extsh. r0, r3
/* 805D7620  41 82 00 0C */	beq lbl_805D762C
/* 805D7624  38 03 20 00 */	addi r0, r3, 0x2000
/* 805D7628  B0 1F 04 E8 */	sth r0, 0x4e8(r31)
lbl_805D762C:
/* 805D762C  38 7F 05 2C */	addi r3, r31, 0x52c
/* 805D7630  C0 3E 02 B8 */	lfs f1, 0x2b8(r30)
/* 805D7634  C0 5E 00 88 */	lfs f2, 0x88(r30)
/* 805D7638  C0 7E 02 8C */	lfs f3, 0x28c(r30)
/* 805D763C  4B C9 84 00 */	b cLib_addCalc2__FPffff
/* 805D7640  C0 3F 04 D4 */	lfs f1, 0x4d4(r31)
/* 805D7644  C0 1E 05 34 */	lfs f0, 0x534(r30)
/* 805D7648  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805D764C  41 81 04 38 */	bgt lbl_805D7A84
/* 805D7650  C0 5E 00 04 */	lfs f2, 4(r30)
/* 805D7654  D0 5F 05 2C */	stfs f2, 0x52c(r31)
/* 805D7658  D0 5F 04 FC */	stfs f2, 0x4fc(r31)
/* 805D765C  D0 5F 05 30 */	stfs f2, 0x530(r31)
/* 805D7660  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
/* 805D7664  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 805D7668  D0 21 01 78 */	stfs f1, 0x178(r1)
/* 805D766C  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 805D7670  D0 01 01 7C */	stfs f0, 0x17c(r1)
/* 805D7674  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 805D7678  D0 01 01 80 */	stfs f0, 0x180(r1)
/* 805D767C  C0 1E 05 38 */	lfs f0, 0x538(r30)
/* 805D7680  EC 01 00 2A */	fadds f0, f1, f0
/* 805D7684  D0 01 01 78 */	stfs f0, 0x178(r1)
/* 805D7688  C0 1E 01 20 */	lfs f0, 0x120(r30)
/* 805D768C  D0 01 01 7C */	stfs f0, 0x17c(r1)
/* 805D7690  D0 41 00 34 */	stfs f2, 0x34(r1)
/* 805D7694  C0 1E 00 08 */	lfs f0, 8(r30)
/* 805D7698  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 805D769C  D0 41 00 3C */	stfs f2, 0x3c(r1)
/* 805D76A0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805D76A4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 805D76A8  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 805D76AC  38 80 00 02 */	li r4, 2
/* 805D76B0  38 A0 00 4F */	li r5, 0x4f
/* 805D76B4  38 C1 00 34 */	addi r6, r1, 0x34
/* 805D76B8  4B A9 83 6C */	b StartShock__12dVibration_cFii4cXyz
/* 805D76BC  3B 20 00 00 */	li r25, 0
/* 805D76C0  3B 60 00 00 */	li r27, 0
/* 805D76C4  3C 60 80 5E */	lis r3, eff_Demo_sasi_id@ha
/* 805D76C8  3B 43 D6 80 */	addi r26, r3, eff_Demo_sasi_id@l
lbl_805D76CC:
/* 805D76CC  7C 7A DA 2E */	lhzx r3, r26, r27
/* 805D76D0  38 81 01 78 */	addi r4, r1, 0x178
/* 805D76D4  38 BF 04 E4 */	addi r5, r31, 0x4e4
/* 805D76D8  38 C0 00 00 */	li r6, 0
/* 805D76DC  4B FF 85 3D */	bl dComIfGp_particle_set__FUsPC4cXyzPC5csXyzPC4cXyz
/* 805D76E0  3B 39 00 01 */	addi r25, r25, 1
/* 805D76E4  2C 19 00 02 */	cmpwi r25, 2
/* 805D76E8  3B 7B 00 02 */	addi r27, r27, 2
/* 805D76EC  41 80 FF E0 */	blt lbl_805D76CC
/* 805D76F0  38 00 00 1E */	li r0, 0x1e
/* 805D76F4  90 1F 08 1C */	stw r0, 0x81c(r31)
/* 805D76F8  80 7F 06 84 */	lwz r3, 0x684(r31)
/* 805D76FC  38 03 00 01 */	addi r0, r3, 1
/* 805D7700  90 1F 06 84 */	stw r0, 0x684(r31)
lbl_805D7704:
/* 805D7704  38 7F 08 1C */	addi r3, r31, 0x81c
/* 805D7708  48 00 51 DD */	bl func_805DC8E4
/* 805D770C  2C 03 00 00 */	cmpwi r3, 0
/* 805D7710  40 82 03 74 */	bne lbl_805D7A84
/* 805D7714  3C 60 80 5E */	lis r3, stringBase0@ha
/* 805D7718  38 63 D2 2C */	addi r3, r3, stringBase0@l
/* 805D771C  38 80 00 50 */	li r4, 0x50
/* 805D7720  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 805D7724  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 805D7728  3C A5 00 02 */	addis r5, r5, 2
/* 805D772C  38 C0 00 80 */	li r6, 0x80
/* 805D7730  38 A5 C2 F8 */	addi r5, r5, -15624
/* 805D7734  4B A6 4B B8 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 805D7738  7C 65 1B 78 */	mr r5, r3
/* 805D773C  80 7F 05 B8 */	lwz r3, 0x5b8(r31)
/* 805D7740  80 63 00 04 */	lwz r3, 4(r3)
/* 805D7744  80 83 00 04 */	lwz r4, 4(r3)
/* 805D7748  80 7F 05 C8 */	lwz r3, 0x5c8(r31)
/* 805D774C  38 84 00 58 */	addi r4, r4, 0x58
/* 805D7750  38 C0 00 01 */	li r6, 1
/* 805D7754  38 E0 00 01 */	li r7, 1
/* 805D7758  C0 3E 00 08 */	lfs f1, 8(r30)
/* 805D775C  39 00 00 00 */	li r8, 0
/* 805D7760  39 20 FF FF */	li r9, -1
/* 805D7764  4B A3 5F A8 */	b init__13mDoExt_brkAnmFP16J3DMaterialTableP15J3DAnmTevRegKeyiifss
/* 805D7768  C0 1E 00 04 */	lfs f0, 4(r30)
/* 805D776C  D0 1F 07 FC */	stfs f0, 0x7fc(r31)
/* 805D7770  38 00 00 04 */	li r0, 4
/* 805D7774  90 1F 08 40 */	stw r0, 0x840(r31)
/* 805D7778  80 7F 06 84 */	lwz r3, 0x684(r31)
/* 805D777C  38 03 00 01 */	addi r0, r3, 1
/* 805D7780  90 1F 06 84 */	stw r0, 0x684(r31)
/* 805D7784  48 00 03 00 */	b lbl_805D7A84
lbl_805D7788:
/* 805D7788  80 7F 05 B8 */	lwz r3, 0x5b8(r31)
/* 805D778C  38 80 00 01 */	li r4, 1
/* 805D7790  88 03 00 11 */	lbz r0, 0x11(r3)
/* 805D7794  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 805D7798  40 82 00 18 */	bne lbl_805D77B0
/* 805D779C  C0 3E 00 04 */	lfs f1, 4(r30)
/* 805D77A0  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 805D77A4  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 805D77A8  41 82 00 08 */	beq lbl_805D77B0
/* 805D77AC  38 80 00 00 */	li r4, 0
lbl_805D77B0:
/* 805D77B0  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 805D77B4  41 82 02 D0 */	beq lbl_805D7A84
/* 805D77B8  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 805D77BC  D0 21 01 78 */	stfs f1, 0x178(r1)
/* 805D77C0  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 805D77C4  D0 01 01 7C */	stfs f0, 0x17c(r1)
/* 805D77C8  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 805D77CC  D0 01 01 80 */	stfs f0, 0x180(r1)
/* 805D77D0  C0 1E 05 38 */	lfs f0, 0x538(r30)
/* 805D77D4  EC 01 00 2A */	fadds f0, f1, f0
/* 805D77D8  D0 01 01 78 */	stfs f0, 0x178(r1)
/* 805D77DC  C0 1E 01 20 */	lfs f0, 0x120(r30)
/* 805D77E0  D0 01 01 7C */	stfs f0, 0x17c(r1)
/* 805D77E4  3C 60 00 01 */	lis r3, 0x0001 /* 0x00008C20@ha */
/* 805D77E8  38 63 8C 20 */	addi r3, r3, 0x8C20 /* 0x00008C20@l */
/* 805D77EC  38 81 01 78 */	addi r4, r1, 0x178
/* 805D77F0  38 BF 04 E4 */	addi r5, r31, 0x4e4
/* 805D77F4  38 C0 00 00 */	li r6, 0
/* 805D77F8  4B FF 84 21 */	bl dComIfGp_particle_set__FUsPC4cXyzPC5csXyzPC4cXyz
/* 805D77FC  7F E3 FB 78 */	mr r3, r31
/* 805D7800  38 81 01 78 */	addi r4, r1, 0x178
/* 805D7804  38 A0 00 04 */	li r5, 4
/* 805D7808  38 C0 00 01 */	li r6, 1
/* 805D780C  38 E0 00 FF */	li r7, 0xff
/* 805D7810  4B A4 52 C8 */	b fopAcM_createDisappear__FPC10fopAc_ac_cPC4cXyzUcUcUc
/* 805D7814  38 00 00 01 */	li r0, 1
/* 805D7818  98 1F 08 5B */	stb r0, 0x85b(r31)
/* 805D781C  38 00 00 50 */	li r0, 0x50
/* 805D7820  90 1F 08 1C */	stw r0, 0x81c(r31)
/* 805D7824  80 7F 06 84 */	lwz r3, 0x684(r31)
/* 805D7828  38 03 00 01 */	addi r0, r3, 1
/* 805D782C  90 1F 06 84 */	stw r0, 0x684(r31)
/* 805D7830  48 00 02 54 */	b lbl_805D7A84
lbl_805D7834:
/* 805D7834  38 7F 08 1C */	addi r3, r31, 0x81c
/* 805D7838  48 00 50 AD */	bl func_805DC8E4
/* 805D783C  2C 03 00 00 */	cmpwi r3, 0
/* 805D7840  41 82 00 D0 */	beq lbl_805D7910
/* 805D7844  80 1F 08 1C */	lwz r0, 0x81c(r31)
/* 805D7848  2C 00 00 46 */	cmpwi r0, 0x46
/* 805D784C  40 82 00 88 */	bne lbl_805D78D4
/* 805D7850  C0 1E 00 08 */	lfs f0, 8(r30)
/* 805D7854  D0 01 01 60 */	stfs f0, 0x160(r1)
/* 805D7858  D0 01 01 64 */	stfs f0, 0x164(r1)
/* 805D785C  D0 01 01 68 */	stfs f0, 0x168(r1)
/* 805D7860  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 805D7864  D0 21 01 78 */	stfs f1, 0x178(r1)
/* 805D7868  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 805D786C  D0 01 01 7C */	stfs f0, 0x17c(r1)
/* 805D7870  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 805D7874  D0 01 01 80 */	stfs f0, 0x180(r1)
/* 805D7878  C0 1E 05 38 */	lfs f0, 0x538(r30)
/* 805D787C  EC 01 00 2A */	fadds f0, f1, f0
/* 805D7880  D0 01 01 78 */	stfs f0, 0x178(r1)
/* 805D7884  C0 1E 01 20 */	lfs f0, 0x120(r30)
/* 805D7888  D0 01 01 7C */	stfs f0, 0x17c(r1)
/* 805D788C  38 61 01 78 */	addi r3, r1, 0x178
/* 805D7890  38 80 00 22 */	li r4, 0x22
/* 805D7894  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 805D7898  7C 05 07 74 */	extsb r5, r0
/* 805D789C  38 DF 04 E4 */	addi r6, r31, 0x4e4
/* 805D78A0  38 E1 01 60 */	addi r7, r1, 0x160
/* 805D78A4  C0 3E 00 04 */	lfs f1, 4(r30)
/* 805D78A8  FC 40 08 90 */	fmr f2, f1
/* 805D78AC  39 00 FF FF */	li r8, -1
/* 805D78B0  4B A4 48 24 */	b fopAcM_createItemForBoss__FPC4cXyziiPC5csXyzPC4cXyzffi
/* 805D78B4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805D78B8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 805D78BC  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 805D78C0  38 80 00 1E */	li r4, 0x1e
/* 805D78C4  38 A0 00 00 */	li r5, 0
/* 805D78C8  38 C0 00 00 */	li r6, 0
/* 805D78CC  38 E0 00 00 */	li r7, 0
/* 805D78D0  48 00 51 0D */	bl changeDemoMode__9daPy_py_cFUliis
lbl_805D78D4:
/* 805D78D4  38 7F 2D 20 */	addi r3, r31, 0x2d20
/* 805D78D8  38 9D 06 E8 */	addi r4, r29, 0x6e8
/* 805D78DC  C0 3E 02 8C */	lfs f1, 0x28c(r30)
/* 805D78E0  C0 5E 02 F0 */	lfs f2, 0x2f0(r30)
/* 805D78E4  C0 7E 01 90 */	lfs f3, 0x190(r30)
/* 805D78E8  38 84 00 0C */	addi r4, r4, 0xc
/* 805D78EC  4B C9 81 CC */	b cLib_addCalcPos__FP4cXyzRC4cXyzfff
/* 805D78F0  38 7F 2D 14 */	addi r3, r31, 0x2d14
/* 805D78F4  38 9D 07 1C */	addi r4, r29, 0x71c
/* 805D78F8  C0 3E 02 8C */	lfs f1, 0x28c(r30)
/* 805D78FC  C0 5E 02 F0 */	lfs f2, 0x2f0(r30)
/* 805D7900  C0 7E 01 90 */	lfs f3, 0x190(r30)
/* 805D7904  38 84 00 0C */	addi r4, r4, 0xc
/* 805D7908  4B C9 81 B0 */	b cLib_addCalcPos__FP4cXyzRC4cXyzfff
/* 805D790C  48 00 01 78 */	b lbl_805D7A84
lbl_805D7910:
/* 805D7910  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805D7914  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 805D7918  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 805D791C  38 80 00 01 */	li r4, 1
/* 805D7920  38 A0 00 00 */	li r5, 0
/* 805D7924  38 C0 00 00 */	li r6, 0
/* 805D7928  38 E0 00 00 */	li r7, 0
/* 805D792C  48 00 50 B1 */	bl changeDemoMode__9daPy_py_cFUliis
/* 805D7930  38 00 00 50 */	li r0, 0x50
/* 805D7934  90 1F 08 1C */	stw r0, 0x81c(r31)
/* 805D7938  80 7F 06 84 */	lwz r3, 0x684(r31)
/* 805D793C  38 03 00 01 */	addi r0, r3, 1
/* 805D7940  90 1F 06 84 */	stw r0, 0x684(r31)
lbl_805D7944:
/* 805D7944  38 7F 08 1C */	addi r3, r31, 0x81c
/* 805D7948  48 00 4F 9D */	bl func_805DC8E4
/* 805D794C  2C 03 00 00 */	cmpwi r3, 0
/* 805D7950  40 82 01 34 */	bne lbl_805D7A84
/* 805D7954  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805D7958  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 805D795C  38 80 00 70 */	li r4, 0x70
/* 805D7960  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 805D7964  7C 05 07 74 */	extsb r5, r0
/* 805D7968  4B A5 D8 98 */	b onSwitch__10dSv_info_cFii
/* 805D796C  38 00 00 8C */	li r0, 0x8c
/* 805D7970  90 1F 08 1C */	stw r0, 0x81c(r31)
/* 805D7974  80 7F 06 84 */	lwz r3, 0x684(r31)
/* 805D7978  38 03 00 01 */	addi r0, r3, 1
/* 805D797C  90 1F 06 84 */	stw r0, 0x684(r31)
lbl_805D7980:
/* 805D7980  C0 1E 05 3C */	lfs f0, 0x53c(r30)
/* 805D7984  D0 1F 2D 20 */	stfs f0, 0x2d20(r31)
/* 805D7988  C0 1E 05 40 */	lfs f0, 0x540(r30)
/* 805D798C  D0 1F 2D 24 */	stfs f0, 0x2d24(r31)
/* 805D7990  C0 1E 05 44 */	lfs f0, 0x544(r30)
/* 805D7994  D0 1F 2D 28 */	stfs f0, 0x2d28(r31)
/* 805D7998  C0 1E 05 48 */	lfs f0, 0x548(r30)
/* 805D799C  D0 1F 2D 14 */	stfs f0, 0x2d14(r31)
/* 805D79A0  C0 1E 05 4C */	lfs f0, 0x54c(r30)
/* 805D79A4  D0 1F 2D 18 */	stfs f0, 0x2d18(r31)
/* 805D79A8  C0 1E 05 50 */	lfs f0, 0x550(r30)
/* 805D79AC  D0 1F 2D 1C */	stfs f0, 0x2d1c(r31)
/* 805D79B0  C0 1E 05 54 */	lfs f0, 0x554(r30)
/* 805D79B4  D0 1F 2D 2C */	stfs f0, 0x2d2c(r31)
/* 805D79B8  38 7F 08 1C */	addi r3, r31, 0x81c
/* 805D79BC  48 00 4F 29 */	bl func_805DC8E4
/* 805D79C0  2C 03 00 00 */	cmpwi r3, 0
/* 805D79C4  40 82 00 C0 */	bne lbl_805D7A84
/* 805D79C8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805D79CC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 805D79D0  38 80 00 7B */	li r4, 0x7b
/* 805D79D4  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 805D79D8  7C 05 07 74 */	extsb r5, r0
/* 805D79DC  4B A5 D8 24 */	b onSwitch__10dSv_info_cFii
/* 805D79E0  38 00 00 8C */	li r0, 0x8c
/* 805D79E4  90 1F 08 1C */	stw r0, 0x81c(r31)
/* 805D79E8  80 7F 06 84 */	lwz r3, 0x684(r31)
/* 805D79EC  38 03 00 01 */	addi r0, r3, 1
/* 805D79F0  90 1F 06 84 */	stw r0, 0x684(r31)
lbl_805D79F4:
/* 805D79F4  C0 1E 05 58 */	lfs f0, 0x558(r30)
/* 805D79F8  D0 1F 2D 20 */	stfs f0, 0x2d20(r31)
/* 805D79FC  C0 1E 04 F8 */	lfs f0, 0x4f8(r30)
/* 805D7A00  D0 1F 2D 24 */	stfs f0, 0x2d24(r31)
/* 805D7A04  C0 1E 05 5C */	lfs f0, 0x55c(r30)
/* 805D7A08  D0 1F 2D 28 */	stfs f0, 0x2d28(r31)
/* 805D7A0C  C0 1E 05 60 */	lfs f0, 0x560(r30)
/* 805D7A10  D0 1F 2D 14 */	stfs f0, 0x2d14(r31)
/* 805D7A14  C0 1E 05 64 */	lfs f0, 0x564(r30)
/* 805D7A18  D0 1F 2D 18 */	stfs f0, 0x2d18(r31)
/* 805D7A1C  C0 1E 05 68 */	lfs f0, 0x568(r30)
/* 805D7A20  D0 1F 2D 1C */	stfs f0, 0x2d1c(r31)
/* 805D7A24  C0 1E 05 6C */	lfs f0, 0x56c(r30)
/* 805D7A28  D0 1F 2D 2C */	stfs f0, 0x2d2c(r31)
/* 805D7A2C  38 7F 08 1C */	addi r3, r31, 0x81c
/* 805D7A30  48 00 4E B5 */	bl func_805DC8E4
/* 805D7A34  2C 03 00 00 */	cmpwi r3, 0
/* 805D7A38  40 82 00 4C */	bne lbl_805D7A84
/* 805D7A3C  38 7C 02 48 */	addi r3, r28, 0x248
/* 805D7A40  4B B8 9A 6C */	b Start__9dCamera_cFv
/* 805D7A44  38 7C 02 48 */	addi r3, r28, 0x248
/* 805D7A48  38 80 00 00 */	li r4, 0
/* 805D7A4C  4B B8 B5 C0 */	b SetTrimSize__9dCamera_cFl
/* 805D7A50  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805D7A54  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 805D7A58  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 805D7A5C  4B A6 AA 0C */	b reset__14dEvt_control_cFv
/* 805D7A60  38 60 00 13 */	li r3, 0x13
/* 805D7A64  4B A5 5D 6C */	b dComIfGs_onStageBossEnemy__Fi
/* 805D7A68  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805D7A6C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 805D7A70  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 805D7A74  38 80 20 10 */	li r4, 0x2010
/* 805D7A78  4B A5 CF 14 */	b onEventBit__11dSv_event_cFUs
/* 805D7A7C  7F E3 FB 78 */	mr r3, r31
/* 805D7A80  4B A4 21 FC */	b fopAcM_delete__FP10fopAc_ac_c
lbl_805D7A84:
/* 805D7A84  80 1F 06 84 */	lwz r0, 0x684(r31)
/* 805D7A88  2C 00 00 14 */	cmpwi r0, 0x14
/* 805D7A8C  41 80 00 94 */	blt lbl_805D7B20
/* 805D7A90  2C 00 00 17 */	cmpwi r0, 0x17
/* 805D7A94  41 81 00 8C */	bgt lbl_805D7B20
/* 805D7A98  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 805D7A9C  D0 01 01 78 */	stfs f0, 0x178(r1)
/* 805D7AA0  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 805D7AA4  D0 01 01 7C */	stfs f0, 0x17c(r1)
/* 805D7AA8  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 805D7AAC  D0 01 01 80 */	stfs f0, 0x180(r1)
/* 805D7AB0  38 7D 06 E8 */	addi r3, r29, 0x6e8
/* 805D7AB4  C0 03 00 04 */	lfs f0, 4(r3)
/* 805D7AB8  C0 3F 04 D4 */	lfs f1, 0x4d4(r31)
/* 805D7ABC  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 805D7AC0  40 80 00 14 */	bge lbl_805D7AD4
/* 805D7AC4  38 7F 2D 24 */	addi r3, r31, 0x2d24
/* 805D7AC8  C0 5E 00 84 */	lfs f2, 0x84(r30)
/* 805D7ACC  C0 7E 00 00 */	lfs f3, 0(r30)
/* 805D7AD0  4B C9 7F 6C */	b cLib_addCalc2__FPffff
lbl_805D7AD4:
/* 805D7AD4  C0 21 01 78 */	lfs f1, 0x178(r1)
/* 805D7AD8  C0 1E 04 F4 */	lfs f0, 0x4f4(r30)
/* 805D7ADC  EC 21 00 2A */	fadds f1, f1, f0
/* 805D7AE0  D0 21 01 78 */	stfs f1, 0x178(r1)
/* 805D7AE4  38 7F 2D 20 */	addi r3, r31, 0x2d20
/* 805D7AE8  C0 5E 00 84 */	lfs f2, 0x84(r30)
/* 805D7AEC  C0 7E 00 00 */	lfs f3, 0(r30)
/* 805D7AF0  4B C9 7F 4C */	b cLib_addCalc2__FPffff
/* 805D7AF4  38 7F 2D 28 */	addi r3, r31, 0x2d28
/* 805D7AF8  C0 21 01 80 */	lfs f1, 0x180(r1)
/* 805D7AFC  C0 5E 00 84 */	lfs f2, 0x84(r30)
/* 805D7B00  C0 7E 00 00 */	lfs f3, 0(r30)
/* 805D7B04  4B C9 7F 38 */	b cLib_addCalc2__FPffff
/* 805D7B08  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 805D7B0C  D0 1F 05 38 */	stfs f0, 0x538(r31)
/* 805D7B10  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 805D7B14  D0 1F 05 3C */	stfs f0, 0x53c(r31)
/* 805D7B18  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 805D7B1C  D0 1F 05 40 */	stfs f0, 0x540(r31)
lbl_805D7B20:
/* 805D7B20  80 1F 06 84 */	lwz r0, 0x684(r31)
/* 805D7B24  2C 00 00 05 */	cmpwi r0, 5
/* 805D7B28  41 80 00 24 */	blt lbl_805D7B4C
/* 805D7B2C  2C 00 00 0F */	cmpwi r0, 0xf
/* 805D7B30  41 81 00 1C */	bgt lbl_805D7B4C
/* 805D7B34  38 7F 2D 20 */	addi r3, r31, 0x2d20
/* 805D7B38  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 805D7B3C  C0 3E 00 84 */	lfs f1, 0x84(r30)
/* 805D7B40  C0 5E 00 00 */	lfs f2, 0(r30)
/* 805D7B44  C0 7E 02 28 */	lfs f3, 0x228(r30)
/* 805D7B48  4B C9 7F 70 */	b cLib_addCalcPos__FP4cXyzRC4cXyzfff
lbl_805D7B4C:
/* 805D7B4C  80 1F 06 84 */	lwz r0, 0x684(r31)
/* 805D7B50  2C 00 00 05 */	cmpwi r0, 5
/* 805D7B54  41 80 00 14 */	blt lbl_805D7B68
/* 805D7B58  2C 00 00 10 */	cmpwi r0, 0x10
/* 805D7B5C  41 81 00 0C */	bgt lbl_805D7B68
/* 805D7B60  7F E3 FB 78 */	mr r3, r31
/* 805D7B64  4B FF 40 1D */	bl mSmokeSet__8daB_DS_cFv
lbl_805D7B68:
/* 805D7B68  80 1F 06 84 */	lwz r0, 0x684(r31)
/* 805D7B6C  2C 00 00 19 */	cmpwi r0, 0x19
/* 805D7B70  41 80 00 34 */	blt lbl_805D7BA4
/* 805D7B74  2C 00 00 64 */	cmpwi r0, 0x64
/* 805D7B78  41 82 00 2C */	beq lbl_805D7BA4
/* 805D7B7C  38 7F 07 FC */	addi r3, r31, 0x7fc
/* 805D7B80  C0 3E 00 08 */	lfs f1, 8(r30)
/* 805D7B84  C0 5E 00 28 */	lfs f2, 0x28(r30)
/* 805D7B88  FC 60 10 90 */	fmr f3, f2
/* 805D7B8C  C0 9E 02 E4 */	lfs f4, 0x2e4(r30)
/* 805D7B90  4B C9 7D EC */	b cLib_addCalc__FPfffff
/* 805D7B94  38 60 00 02 */	li r3, 2
/* 805D7B98  38 80 00 04 */	li r4, 4
/* 805D7B9C  C0 3F 07 FC */	lfs f1, 0x7fc(r31)
/* 805D7BA0  4B BD 0C 6C */	b dKy_custom_colset__FUcUcf
lbl_805D7BA4:
/* 805D7BA4  80 1F 06 84 */	lwz r0, 0x684(r31)
/* 805D7BA8  2C 00 00 00 */	cmpwi r0, 0
/* 805D7BAC  41 82 00 4C */	beq lbl_805D7BF8
/* 805D7BB0  C0 1F 2D 20 */	lfs f0, 0x2d20(r31)
/* 805D7BB4  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 805D7BB8  C0 1F 2D 24 */	lfs f0, 0x2d24(r31)
/* 805D7BBC  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 805D7BC0  C0 1F 2D 28 */	lfs f0, 0x2d28(r31)
/* 805D7BC4  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 805D7BC8  C0 1F 2D 14 */	lfs f0, 0x2d14(r31)
/* 805D7BCC  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 805D7BD0  C0 1F 2D 18 */	lfs f0, 0x2d18(r31)
/* 805D7BD4  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 805D7BD8  C0 1F 2D 1C */	lfs f0, 0x2d1c(r31)
/* 805D7BDC  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 805D7BE0  38 7C 02 48 */	addi r3, r28, 0x248
/* 805D7BE4  38 81 00 28 */	addi r4, r1, 0x28
/* 805D7BE8  38 A1 00 1C */	addi r5, r1, 0x1c
/* 805D7BEC  C0 3F 2D 2C */	lfs f1, 0x2d2c(r31)
/* 805D7BF0  38 C0 00 00 */	li r6, 0
/* 805D7BF4  4B BA 8E EC */	b Set__9dCamera_cF4cXyz4cXyzfs
lbl_805D7BF8:
/* 805D7BF8  39 61 01 B0 */	addi r11, r1, 0x1b0
/* 805D7BFC  4B D8 A6 1C */	b _restgpr_25
/* 805D7C00  80 01 01 B4 */	lwz r0, 0x1b4(r1)
/* 805D7C04  7C 08 03 A6 */	mtlr r0
/* 805D7C08  38 21 01 B0 */	addi r1, r1, 0x1b0
/* 805D7C0C  4E 80 00 20 */	blr 
