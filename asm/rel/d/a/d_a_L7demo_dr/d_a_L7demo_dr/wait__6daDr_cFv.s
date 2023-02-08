lbl_805A9478:
/* 805A9478  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 805A947C  7C 08 02 A6 */	mflr r0
/* 805A9480  90 01 00 34 */	stw r0, 0x34(r1)
/* 805A9484  39 61 00 30 */	addi r11, r1, 0x30
/* 805A9488  4B DB 8D 55 */	bl _savegpr_29
/* 805A948C  7C 7F 1B 78 */	mr r31, r3
/* 805A9490  3C 60 80 5B */	lis r3, lit_3864@ha /* 0x805AA454@ha */
/* 805A9494  38 63 A4 54 */	addi r3, r3, lit_3864@l /* 0x805AA454@l */
/* 805A9498  80 1F 06 54 */	lwz r0, 0x654(r31)
/* 805A949C  2C 00 00 00 */	cmpwi r0, 0
/* 805A94A0  40 82 00 3C */	bne lbl_805A94DC
/* 805A94A4  38 00 00 01 */	li r0, 1
/* 805A94A8  98 1F 06 58 */	stb r0, 0x658(r31)
/* 805A94AC  C0 03 00 00 */	lfs f0, 0(r3)
/* 805A94B0  D0 1F 04 D0 */	stfs f0, 0x4d0(r31)
/* 805A94B4  C0 03 00 04 */	lfs f0, 4(r3)
/* 805A94B8  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
/* 805A94BC  C0 03 00 08 */	lfs f0, 8(r3)
/* 805A94C0  D0 1F 04 D8 */	stfs f0, 0x4d8(r31)
/* 805A94C4  38 00 00 00 */	li r0, 0
/* 805A94C8  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 805A94CC  80 7F 06 54 */	lwz r3, 0x654(r31)
/* 805A94D0  38 03 00 01 */	addi r0, r3, 1
/* 805A94D4  90 1F 06 54 */	stw r0, 0x654(r31)
/* 805A94D8  48 00 01 4C */	b lbl_805A9624
lbl_805A94DC:
/* 805A94DC  2C 00 FF FF */	cmpwi r0, -1
/* 805A94E0  41 82 01 44 */	beq lbl_805A9624
/* 805A94E4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805A94E8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805A94EC  88 03 5D B0 */	lbz r0, 0x5db0(r3)
/* 805A94F0  7C 00 07 74 */	extsb r0, r0
/* 805A94F4  38 63 5D 74 */	addi r3, r3, 0x5d74
/* 805A94F8  1C 00 00 38 */	mulli r0, r0, 0x38
/* 805A94FC  7F C3 00 2E */	lwzx r30, r3, r0
/* 805A9500  83 A3 00 00 */	lwz r29, 0(r3)
/* 805A9504  A0 1F 00 F8 */	lhz r0, 0xf8(r31)
/* 805A9508  28 00 00 02 */	cmplwi r0, 2
/* 805A950C  40 82 00 A4 */	bne lbl_805A95B0
/* 805A9510  38 7E 02 48 */	addi r3, r30, 0x248
/* 805A9514  4B BB 7F BD */	bl Stop__9dCamera_cFv
/* 805A9518  38 7E 02 48 */	addi r3, r30, 0x248
/* 805A951C  38 80 00 03 */	li r4, 3
/* 805A9520  4B BB 9A ED */	bl SetTrimSize__9dCamera_cFl
/* 805A9524  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805A9528  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805A952C  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 805A9530  38 00 00 03 */	li r0, 3
/* 805A9534  B0 03 06 04 */	sth r0, 0x604(r3)
/* 805A9538  38 00 00 00 */	li r0, 0
/* 805A953C  90 03 06 0C */	stw r0, 0x60c(r3)
/* 805A9540  38 60 00 00 */	li r3, 0
/* 805A9544  4B A8 34 39 */	bl getLayerNo__14dComIfG_play_cFi
/* 805A9548  2C 03 00 03 */	cmpwi r3, 3
/* 805A954C  41 82 00 34 */	beq lbl_805A9580
/* 805A9550  3C 60 80 5B */	lis r3, lit_3830@ha /* 0x805AA4D0@ha */
/* 805A9554  38 83 A4 D0 */	addi r4, r3, lit_3830@l /* 0x805AA4D0@l */
/* 805A9558  80 64 00 00 */	lwz r3, 0(r4)
/* 805A955C  80 04 00 04 */	lwz r0, 4(r4)
/* 805A9560  90 61 00 14 */	stw r3, 0x14(r1)
/* 805A9564  90 01 00 18 */	stw r0, 0x18(r1)
/* 805A9568  80 04 00 08 */	lwz r0, 8(r4)
/* 805A956C  90 01 00 1C */	stw r0, 0x1c(r1)
/* 805A9570  7F E3 FB 78 */	mr r3, r31
/* 805A9574  38 81 00 14 */	addi r4, r1, 0x14
/* 805A9578  4B FF FC C1 */	bl setAction__6daDr_cFM6daDr_cFPCvPv_v
/* 805A957C  48 00 00 A8 */	b lbl_805A9624
lbl_805A9580:
/* 805A9580  3C 60 80 5B */	lis r3, lit_3833@ha /* 0x805AA4DC@ha */
/* 805A9584  38 83 A4 DC */	addi r4, r3, lit_3833@l /* 0x805AA4DC@l */
/* 805A9588  80 64 00 00 */	lwz r3, 0(r4)
/* 805A958C  80 04 00 04 */	lwz r0, 4(r4)
/* 805A9590  90 61 00 08 */	stw r3, 8(r1)
/* 805A9594  90 01 00 0C */	stw r0, 0xc(r1)
/* 805A9598  80 04 00 08 */	lwz r0, 8(r4)
/* 805A959C  90 01 00 10 */	stw r0, 0x10(r1)
/* 805A95A0  7F E3 FB 78 */	mr r3, r31
/* 805A95A4  38 81 00 08 */	addi r4, r1, 8
/* 805A95A8  4B FF FC 91 */	bl setAction__6daDr_cFM6daDr_cFPCvPv_v
/* 805A95AC  48 00 00 78 */	b lbl_805A9624
lbl_805A95B0:
/* 805A95B0  38 60 00 00 */	li r3, 0
/* 805A95B4  4B A8 33 C9 */	bl getLayerNo__14dComIfG_play_cFi
/* 805A95B8  2C 03 00 03 */	cmpwi r3, 3
/* 805A95BC  41 82 00 14 */	beq lbl_805A95D0
/* 805A95C0  7F E3 FB 78 */	mr r3, r31
/* 805A95C4  48 00 0B D9 */	bl check_start__6daDr_cFv
/* 805A95C8  2C 03 00 00 */	cmpwi r3, 0
/* 805A95CC  41 82 00 58 */	beq lbl_805A9624
lbl_805A95D0:
/* 805A95D0  7F E3 FB 78 */	mr r3, r31
/* 805A95D4  38 80 00 02 */	li r4, 2
/* 805A95D8  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000FFFF@ha */
/* 805A95DC  38 A5 FF FF */	addi r5, r5, 0xFFFF /* 0x0000FFFF@l */
/* 805A95E0  38 C0 00 00 */	li r6, 0
/* 805A95E4  4B A7 23 25 */	bl fopAcM_orderPotentialEvent__FP10fopAc_ac_cUsUsUs
/* 805A95E8  A0 1F 00 FA */	lhz r0, 0xfa(r31)
/* 805A95EC  60 00 00 02 */	ori r0, r0, 2
/* 805A95F0  B0 1F 00 FA */	sth r0, 0xfa(r31)
/* 805A95F4  C0 1D 00 D8 */	lfs f0, 0xd8(r29)
/* 805A95F8  D0 1F 06 24 */	stfs f0, 0x624(r31)
/* 805A95FC  C0 1D 00 DC */	lfs f0, 0xdc(r29)
/* 805A9600  D0 1F 06 28 */	stfs f0, 0x628(r31)
/* 805A9604  C0 1D 00 E0 */	lfs f0, 0xe0(r29)
/* 805A9608  D0 1F 06 2C */	stfs f0, 0x62c(r31)
/* 805A960C  C0 1D 00 E4 */	lfs f0, 0xe4(r29)
/* 805A9610  D0 1F 06 30 */	stfs f0, 0x630(r31)
/* 805A9614  C0 1D 00 E8 */	lfs f0, 0xe8(r29)
/* 805A9618  D0 1F 06 34 */	stfs f0, 0x634(r31)
/* 805A961C  C0 1D 00 EC */	lfs f0, 0xec(r29)
/* 805A9620  D0 1F 06 38 */	stfs f0, 0x638(r31)
lbl_805A9624:
/* 805A9624  39 61 00 30 */	addi r11, r1, 0x30
/* 805A9628  4B DB 8C 01 */	bl _restgpr_29
/* 805A962C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 805A9630  7C 08 03 A6 */	mtlr r0
/* 805A9634  38 21 00 30 */	addi r1, r1, 0x30
/* 805A9638  4E 80 00 20 */	blr 
