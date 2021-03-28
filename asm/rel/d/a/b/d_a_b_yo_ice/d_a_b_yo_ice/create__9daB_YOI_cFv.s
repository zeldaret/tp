lbl_8063D5D0:
/* 8063D5D0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8063D5D4  7C 08 02 A6 */	mflr r0
/* 8063D5D8  90 01 00 34 */	stw r0, 0x34(r1)
/* 8063D5DC  39 61 00 30 */	addi r11, r1, 0x30
/* 8063D5E0  4B D2 4B F8 */	b _savegpr_28
/* 8063D5E4  7C 7C 1B 78 */	mr r28, r3
/* 8063D5E8  3C 80 80 64 */	lis r4, cNullVec__6Z2Calc@ha
/* 8063D5EC  3B C4 DD A4 */	addi r30, r4, cNullVec__6Z2Calc@l
/* 8063D5F0  3C 80 80 64 */	lis r4, lit_3776@ha
/* 8063D5F4  3B E4 DC 84 */	addi r31, r4, lit_3776@l
/* 8063D5F8  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 8063D5FC  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 8063D600  40 82 00 1C */	bne lbl_8063D61C
/* 8063D604  28 1C 00 00 */	cmplwi r28, 0
/* 8063D608  41 82 00 08 */	beq lbl_8063D610
/* 8063D60C  48 00 02 F1 */	bl __ct__9daB_YOI_cFv
lbl_8063D610:
/* 8063D610  80 1C 04 A0 */	lwz r0, 0x4a0(r28)
/* 8063D614  60 00 00 08 */	ori r0, r0, 8
/* 8063D618  90 1C 04 A0 */	stw r0, 0x4a0(r28)
lbl_8063D61C:
/* 8063D61C  38 7C 05 AC */	addi r3, r28, 0x5ac
/* 8063D620  3C 80 80 64 */	lis r4, stringBase0@ha
/* 8063D624  38 84 DD 9C */	addi r4, r4, stringBase0@l
/* 8063D628  4B 9E F8 94 */	b dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 8063D62C  7C 7D 1B 78 */	mr r29, r3
/* 8063D630  2C 1D 00 04 */	cmpwi r29, 4
/* 8063D634  40 82 02 AC */	bne lbl_8063D8E0
/* 8063D638  7F 83 E3 78 */	mr r3, r28
/* 8063D63C  3C 80 80 64 */	lis r4, useHeapInit__FP10fopAc_ac_c@ha
/* 8063D640  38 84 D5 B0 */	addi r4, r4, useHeapInit__FP10fopAc_ac_c@l
/* 8063D644  38 A0 1C A0 */	li r5, 0x1ca0
/* 8063D648  4B 9D CE 68 */	b fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 8063D64C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8063D650  40 82 00 0C */	bne lbl_8063D65C
/* 8063D654  38 60 00 05 */	li r3, 5
/* 8063D658  48 00 02 8C */	b lbl_8063D8E4
lbl_8063D65C:
/* 8063D65C  3C 60 80 64 */	lis r3, data_8063DFE8@ha
/* 8063D660  8C 03 DF E8 */	lbzu r0, data_8063DFE8@l(r3)
/* 8063D664  28 00 00 00 */	cmplwi r0, 0
/* 8063D668  40 82 00 20 */	bne lbl_8063D688
/* 8063D66C  38 00 00 01 */	li r0, 1
/* 8063D670  98 03 00 00 */	stb r0, 0(r3)
/* 8063D674  98 1C 0B 38 */	stb r0, 0xb38(r28)
/* 8063D678  38 00 FF FF */	li r0, -1
/* 8063D67C  3C 60 80 64 */	lis r3, l_HIO@ha
/* 8063D680  38 63 DF F8 */	addi r3, r3, l_HIO@l
/* 8063D684  98 03 00 04 */	stb r0, 4(r3)
lbl_8063D688:
/* 8063D688  80 1C 00 B0 */	lwz r0, 0xb0(r28)
/* 8063D68C  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 8063D690  90 1C 06 8C */	stw r0, 0x68c(r28)
/* 8063D694  80 1C 00 B0 */	lwz r0, 0xb0(r28)
/* 8063D698  54 00 86 3E */	rlwinm r0, r0, 0x10, 0x18, 0x1f
/* 8063D69C  98 1C 06 AC */	stb r0, 0x6ac(r28)
/* 8063D6A0  38 00 00 00 */	li r0, 0
/* 8063D6A4  90 1C 05 5C */	stw r0, 0x55c(r28)
/* 8063D6A8  38 00 00 3E */	li r0, 0x3e
/* 8063D6AC  98 1C 05 46 */	stb r0, 0x546(r28)
/* 8063D6B0  80 7C 05 B4 */	lwz r3, 0x5b4(r28)
/* 8063D6B4  38 03 00 24 */	addi r0, r3, 0x24
/* 8063D6B8  90 1C 05 04 */	stw r0, 0x504(r28)
/* 8063D6BC  7F 83 E3 78 */	mr r3, r28
/* 8063D6C0  C0 3F 00 D8 */	lfs f1, 0xd8(r31)
/* 8063D6C4  FC 40 08 90 */	fmr f2, f1
/* 8063D6C8  FC 60 08 90 */	fmr f3, f1
/* 8063D6CC  4B 9D CE 5C */	b fopAcM_SetMin__FP10fopAc_ac_cfff
/* 8063D6D0  7F 83 E3 78 */	mr r3, r28
/* 8063D6D4  C0 3F 00 78 */	lfs f1, 0x78(r31)
/* 8063D6D8  FC 40 08 90 */	fmr f2, f1
/* 8063D6DC  FC 60 08 90 */	fmr f3, f1
/* 8063D6E0  4B 9D CE 58 */	b fopAcM_SetMax__FP10fopAc_ac_cfff
/* 8063D6E4  38 00 00 50 */	li r0, 0x50
/* 8063D6E8  B0 1C 05 62 */	sth r0, 0x562(r28)
/* 8063D6EC  B0 1C 05 60 */	sth r0, 0x560(r28)
/* 8063D6F0  38 7C 07 1C */	addi r3, r28, 0x71c
/* 8063D6F4  38 80 00 FD */	li r4, 0xfd
/* 8063D6F8  38 A0 00 00 */	li r5, 0
/* 8063D6FC  7F 86 E3 78 */	mr r6, r28
/* 8063D700  4B A4 61 60 */	b Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 8063D704  38 7C 07 58 */	addi r3, r28, 0x758
/* 8063D708  38 9E 00 20 */	addi r4, r30, 0x20
/* 8063D70C  4B A4 71 A8 */	b Set__8dCcD_CylFRC11dCcD_SrcCyl
/* 8063D710  38 1C 07 1C */	addi r0, r28, 0x71c
/* 8063D714  90 1C 07 9C */	stw r0, 0x79c(r28)
/* 8063D718  38 7C 08 94 */	addi r3, r28, 0x894
/* 8063D71C  38 9E 00 64 */	addi r4, r30, 0x64
/* 8063D720  4B A4 71 94 */	b Set__8dCcD_CylFRC11dCcD_SrcCyl
/* 8063D724  38 1C 07 1C */	addi r0, r28, 0x71c
/* 8063D728  90 1C 08 D8 */	stw r0, 0x8d8(r28)
/* 8063D72C  38 7C 09 D0 */	addi r3, r28, 0x9d0
/* 8063D730  38 9E 00 A8 */	addi r4, r30, 0xa8
/* 8063D734  4B A4 71 80 */	b Set__8dCcD_CylFRC11dCcD_SrcCyl
/* 8063D738  38 1C 07 1C */	addi r0, r28, 0x71c
/* 8063D73C  90 1C 0A 14 */	stw r0, 0xa14(r28)
/* 8063D740  38 7C 06 48 */	addi r3, r28, 0x648
/* 8063D744  38 9C 04 D0 */	addi r4, r28, 0x4d0
/* 8063D748  38 A0 00 02 */	li r5, 2
/* 8063D74C  81 9C 06 58 */	lwz r12, 0x658(r28)
/* 8063D750  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8063D754  7D 89 03 A6 */	mtctr r12
/* 8063D758  4E 80 04 21 */	bctrl 
/* 8063D75C  38 7C 05 B8 */	addi r3, r28, 0x5b8
/* 8063D760  38 9C 04 D0 */	addi r4, r28, 0x4d0
/* 8063D764  38 BC 05 38 */	addi r5, r28, 0x538
/* 8063D768  38 C0 00 03 */	li r6, 3
/* 8063D76C  38 E0 00 01 */	li r7, 1
/* 8063D770  4B C8 2D C0 */	b init__10Z2CreatureFP3VecP3VecUcUc
/* 8063D774  38 1C 05 B8 */	addi r0, r28, 0x5b8
/* 8063D778  90 1C 0B 14 */	stw r0, 0xb14(r28)
/* 8063D77C  38 00 00 01 */	li r0, 1
/* 8063D780  98 1C 0B 2A */	stb r0, 0xb2a(r28)
/* 8063D784  C0 1F 00 00 */	lfs f0, 0(r31)
/* 8063D788  D0 1C 06 80 */	stfs f0, 0x680(r28)
/* 8063D78C  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 8063D790  D0 1C 05 30 */	stfs f0, 0x530(r28)
/* 8063D794  80 7C 04 A4 */	lwz r3, 0x4a4(r28)
/* 8063D798  38 9C 06 68 */	addi r4, r28, 0x668
/* 8063D79C  4B 9D C2 20 */	b fopAcM_SearchByID__FUiPP10fopAc_ac_c
/* 8063D7A0  80 9C 06 68 */	lwz r4, 0x668(r28)
/* 8063D7A4  28 04 00 00 */	cmplwi r4, 0
/* 8063D7A8  41 82 00 84 */	beq lbl_8063D82C
/* 8063D7AC  38 61 00 08 */	addi r3, r1, 8
/* 8063D7B0  48 00 04 A5 */	bl getIceCenterPos__8daB_YO_cFv
/* 8063D7B4  C0 61 00 08 */	lfs f3, 8(r1)
/* 8063D7B8  D0 61 00 14 */	stfs f3, 0x14(r1)
/* 8063D7BC  C0 41 00 0C */	lfs f2, 0xc(r1)
/* 8063D7C0  D0 41 00 18 */	stfs f2, 0x18(r1)
/* 8063D7C4  C0 21 00 10 */	lfs f1, 0x10(r1)
/* 8063D7C8  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 8063D7CC  80 7C 06 68 */	lwz r3, 0x668(r28)
/* 8063D7D0  C0 83 0F 4C */	lfs f4, 0xf4c(r3)
/* 8063D7D4  A8 83 0F 5C */	lha r4, 0xf5c(r3)
/* 8063D7D8  80 1C 06 8C */	lwz r0, 0x68c(r28)
/* 8063D7DC  1C 00 19 99 */	mulli r0, r0, 0x1999
/* 8063D7E0  7C 04 02 14 */	add r0, r4, r0
/* 8063D7E4  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 8063D7E8  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 8063D7EC  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 8063D7F0  7C 03 04 2E */	lfsx f0, r3, r0
/* 8063D7F4  EC 04 00 32 */	fmuls f0, f4, f0
/* 8063D7F8  EC 03 00 2A */	fadds f0, f3, f0
/* 8063D7FC  D0 1C 04 D0 */	stfs f0, 0x4d0(r28)
/* 8063D800  D0 5C 04 D4 */	stfs f2, 0x4d4(r28)
/* 8063D804  80 1C 06 8C */	lwz r0, 0x68c(r28)
/* 8063D808  1C 00 19 99 */	mulli r0, r0, 0x1999
/* 8063D80C  7C 04 02 14 */	add r0, r4, r0
/* 8063D810  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 8063D814  7C 63 02 14 */	add r3, r3, r0
/* 8063D818  C0 03 00 04 */	lfs f0, 4(r3)
/* 8063D81C  EC 04 00 32 */	fmuls f0, f4, f0
/* 8063D820  EC 01 00 2A */	fadds f0, f1, f0
/* 8063D824  D0 1C 04 D8 */	stfs f0, 0x4d8(r28)
/* 8063D828  48 00 00 3C */	b lbl_8063D864
lbl_8063D82C:
/* 8063D82C  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 8063D830  38 83 9A 20 */	addi r4, r3, sincosTable___5JMath@l
/* 8063D834  80 1C 06 8C */	lwz r0, 0x68c(r28)
/* 8063D838  1C 00 19 99 */	mulli r0, r0, 0x1999
/* 8063D83C  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 8063D840  7C 64 02 14 */	add r3, r4, r0
/* 8063D844  C0 43 00 04 */	lfs f2, 4(r3)
/* 8063D848  7C 04 04 2E */	lfsx f0, r4, r0
/* 8063D84C  C0 3F 00 EC */	lfs f1, 0xec(r31)
/* 8063D850  EC 01 00 32 */	fmuls f0, f1, f0
/* 8063D854  D0 1C 04 D0 */	stfs f0, 0x4d0(r28)
/* 8063D858  D0 3C 04 D4 */	stfs f1, 0x4d4(r28)
/* 8063D85C  EC 01 00 B2 */	fmuls f0, f1, f2
/* 8063D860  D0 1C 04 D8 */	stfs f0, 0x4d8(r28)
lbl_8063D864:
/* 8063D864  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 8063D868  D0 1C 06 80 */	stfs f0, 0x680(r28)
/* 8063D86C  88 1C 06 AC */	lbz r0, 0x6ac(r28)
/* 8063D870  2C 00 00 01 */	cmpwi r0, 1
/* 8063D874  41 82 00 34 */	beq lbl_8063D8A8
/* 8063D878  40 80 00 10 */	bge lbl_8063D888
/* 8063D87C  2C 00 00 00 */	cmpwi r0, 0
/* 8063D880  40 80 00 14 */	bge lbl_8063D894
/* 8063D884  48 00 00 54 */	b lbl_8063D8D8
lbl_8063D888:
/* 8063D888  2C 00 00 03 */	cmpwi r0, 3
/* 8063D88C  40 80 00 4C */	bge lbl_8063D8D8
/* 8063D890  48 00 00 38 */	b lbl_8063D8C8
lbl_8063D894:
/* 8063D894  7F 83 E3 78 */	mr r3, r28
/* 8063D898  38 80 00 00 */	li r4, 0
/* 8063D89C  38 A0 00 00 */	li r5, 0
/* 8063D8A0  4B FF CA 39 */	bl setActionMode__9daB_YOI_cFii
/* 8063D8A4  48 00 00 34 */	b lbl_8063D8D8
lbl_8063D8A8:
/* 8063D8A8  80 1C 04 9C */	lwz r0, 0x49c(r28)
/* 8063D8AC  54 00 04 A0 */	rlwinm r0, r0, 0, 0x12, 0x10
/* 8063D8B0  90 1C 04 9C */	stw r0, 0x49c(r28)
/* 8063D8B4  7F 83 E3 78 */	mr r3, r28
/* 8063D8B8  38 80 00 01 */	li r4, 1
/* 8063D8BC  38 A0 00 09 */	li r5, 9
/* 8063D8C0  4B FF CA 19 */	bl setActionMode__9daB_YOI_cFii
/* 8063D8C4  48 00 00 14 */	b lbl_8063D8D8
lbl_8063D8C8:
/* 8063D8C8  7F 83 E3 78 */	mr r3, r28
/* 8063D8CC  38 80 00 02 */	li r4, 2
/* 8063D8D0  38 A0 00 00 */	li r5, 0
/* 8063D8D4  4B FF CA 05 */	bl setActionMode__9daB_YOI_cFii
lbl_8063D8D8:
/* 8063D8D8  7F 83 E3 78 */	mr r3, r28
/* 8063D8DC  4B FF FB 59 */	bl daB_YOI_Execute__FP9daB_YOI_c
lbl_8063D8E0:
/* 8063D8E0  7F A3 EB 78 */	mr r3, r29
lbl_8063D8E4:
/* 8063D8E4  39 61 00 30 */	addi r11, r1, 0x30
/* 8063D8E8  4B D2 49 3C */	b _restgpr_28
/* 8063D8EC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8063D8F0  7C 08 03 A6 */	mtlr r0
/* 8063D8F4  38 21 00 30 */	addi r1, r1, 0x30
/* 8063D8F8  4E 80 00 20 */	blr 
