lbl_806A7B40:
/* 806A7B40  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 806A7B44  7C 08 02 A6 */	mflr r0
/* 806A7B48  90 01 00 34 */	stw r0, 0x34(r1)
/* 806A7B4C  39 61 00 30 */	addi r11, r1, 0x30
/* 806A7B50  4B CB A6 8C */	b _savegpr_29
/* 806A7B54  7C 7D 1B 78 */	mr r29, r3
/* 806A7B58  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 806A7B5C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 806A7B60  88 03 5D B0 */	lbz r0, 0x5db0(r3)
/* 806A7B64  7C 00 07 74 */	extsb r0, r0
/* 806A7B68  1C 00 00 38 */	mulli r0, r0, 0x38
/* 806A7B6C  7C 63 02 14 */	add r3, r3, r0
/* 806A7B70  83 E3 5D 74 */	lwz r31, 0x5d74(r3)
/* 806A7B74  4B AD 9A CC */	b dCam_getBody__Fv
/* 806A7B78  7C 7E 1B 78 */	mr r30, r3
/* 806A7B7C  A0 1D 00 F8 */	lhz r0, 0xf8(r29)
/* 806A7B80  28 00 00 02 */	cmplwi r0, 2
/* 806A7B84  41 82 00 30 */	beq lbl_806A7BB4
/* 806A7B88  7F A3 EB 78 */	mr r3, r29
/* 806A7B8C  38 80 00 02 */	li r4, 2
/* 806A7B90  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000FFEF@ha */
/* 806A7B94  38 A5 FF EF */	addi r5, r5, 0xFFEF /* 0x0000FFEF@l */
/* 806A7B98  38 C0 00 00 */	li r6, 0
/* 806A7B9C  4B 97 3D 6C */	b fopAcM_orderPotentialEvent__FP10fopAc_ac_cUsUsUs
/* 806A7BA0  A0 1D 00 FA */	lhz r0, 0xfa(r29)
/* 806A7BA4  60 00 00 02 */	ori r0, r0, 2
/* 806A7BA8  B0 1D 00 FA */	sth r0, 0xfa(r29)
/* 806A7BAC  38 60 00 00 */	li r3, 0
/* 806A7BB0  48 00 00 74 */	b lbl_806A7C24
lbl_806A7BB4:
/* 806A7BB4  38 7F 02 48 */	addi r3, r31, 0x248
/* 806A7BB8  4B AB 99 18 */	b Stop__9dCamera_cFv
/* 806A7BBC  C0 3E 00 58 */	lfs f1, 0x58(r30)
/* 806A7BC0  C0 1E 06 F4 */	lfs f0, 0x6f4(r30)
/* 806A7BC4  EC 01 00 2A */	fadds f0, f1, f0
/* 806A7BC8  D0 1D 08 34 */	stfs f0, 0x834(r29)
/* 806A7BCC  38 61 00 14 */	addi r3, r1, 0x14
/* 806A7BD0  7F C4 F3 78 */	mr r4, r30
/* 806A7BD4  4B AD A2 C4 */	b Center__9dCamera_cFv
/* 806A7BD8  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 806A7BDC  D0 1D 08 1C */	stfs f0, 0x81c(r29)
/* 806A7BE0  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 806A7BE4  D0 1D 08 20 */	stfs f0, 0x820(r29)
/* 806A7BE8  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 806A7BEC  D0 1D 08 24 */	stfs f0, 0x824(r29)
/* 806A7BF0  38 61 00 08 */	addi r3, r1, 8
/* 806A7BF4  7F C4 F3 78 */	mr r4, r30
/* 806A7BF8  4B AD A2 6C */	b Eye__9dCamera_cFv
/* 806A7BFC  C0 01 00 08 */	lfs f0, 8(r1)
/* 806A7C00  D0 1D 08 28 */	stfs f0, 0x828(r29)
/* 806A7C04  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 806A7C08  D0 1D 08 2C */	stfs f0, 0x82c(r29)
/* 806A7C0C  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 806A7C10  D0 1D 08 30 */	stfs f0, 0x830(r29)
/* 806A7C14  38 7F 02 48 */	addi r3, r31, 0x248
/* 806A7C18  38 80 00 03 */	li r4, 3
/* 806A7C1C  4B AB B3 F0 */	b SetTrimSize__9dCamera_cFl
/* 806A7C20  38 60 00 01 */	li r3, 1
lbl_806A7C24:
/* 806A7C24  39 61 00 30 */	addi r11, r1, 0x30
/* 806A7C28  4B CB A6 00 */	b _restgpr_29
/* 806A7C2C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 806A7C30  7C 08 03 A6 */	mtlr r0
/* 806A7C34  38 21 00 30 */	addi r1, r1, 0x30
/* 806A7C38  4E 80 00 20 */	blr 
