lbl_80797784:
/* 80797784  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80797788  7C 08 02 A6 */	mflr r0
/* 8079778C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80797790  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80797794  7C 7F 1B 78 */	mr r31, r3
/* 80797798  38 7F 0E 50 */	addi r3, r31, 0xe50
/* 8079779C  38 80 00 96 */	li r4, 0x96
/* 807977A0  38 A0 00 00 */	li r5, 0
/* 807977A4  7F E6 FB 78 */	mr r6, r31
/* 807977A8  4B 8E C0 B8 */	b Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 807977AC  38 7F 0E 8C */	addi r3, r31, 0xe8c
/* 807977B0  38 80 00 96 */	li r4, 0x96
/* 807977B4  38 A0 00 00 */	li r5, 0
/* 807977B8  7F E6 FB 78 */	mr r6, r31
/* 807977BC  4B 8E C0 A4 */	b Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 807977C0  C0 3F 04 EC */	lfs f1, 0x4ec(r31)
/* 807977C4  3C 60 80 7A */	lis r3, l_HIO@ha
/* 807977C8  38 63 89 CC */	addi r3, r3, l_HIO@l
/* 807977CC  C0 03 00 08 */	lfs f0, 8(r3)
/* 807977D0  EC 01 00 32 */	fmuls f0, f1, f0
/* 807977D4  D0 1F 06 F0 */	stfs f0, 0x6f0(r31)
/* 807977D8  38 7F 10 00 */	addi r3, r31, 0x1000
/* 807977DC  3C 80 80 7A */	lis r4, cc_sph_src@ha
/* 807977E0  38 84 88 38 */	addi r4, r4, cc_sph_src@l
/* 807977E4  4B 8E D2 50 */	b Set__8dCcD_SphFRC11dCcD_SrcSph
/* 807977E8  38 1F 0E 8C */	addi r0, r31, 0xe8c
/* 807977EC  90 1F 10 44 */	stw r0, 0x1044(r31)
/* 807977F0  80 1F 10 9C */	lwz r0, 0x109c(r31)
/* 807977F4  60 00 00 04 */	ori r0, r0, 4
/* 807977F8  90 1F 10 9C */	stw r0, 0x109c(r31)
/* 807977FC  80 1F 10 00 */	lwz r0, 0x1000(r31)
/* 80797800  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80797804  90 1F 10 00 */	stw r0, 0x1000(r31)
/* 80797808  80 1F 10 9C */	lwz r0, 0x109c(r31)
/* 8079780C  60 00 01 00 */	ori r0, r0, 0x100
/* 80797810  90 1F 10 9C */	stw r0, 0x109c(r31)
/* 80797814  80 1F 0E F4 */	lwz r0, 0xef4(r31)
/* 80797818  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 8079781C  90 1F 0E F4 */	stw r0, 0xef4(r31)
/* 80797820  38 7F 0E C8 */	addi r3, r31, 0xec8
/* 80797824  3C 80 80 7A */	lis r4, core_sph_src@ha
/* 80797828  38 84 88 78 */	addi r4, r4, core_sph_src@l
/* 8079782C  4B 8E D2 08 */	b Set__8dCcD_SphFRC11dCcD_SrcSph
/* 80797830  38 1F 0E 50 */	addi r0, r31, 0xe50
/* 80797834  90 1F 0F 0C */	stw r0, 0xf0c(r31)
/* 80797838  80 1F 0F 64 */	lwz r0, 0xf64(r31)
/* 8079783C  60 00 00 04 */	ori r0, r0, 4
/* 80797840  90 1F 0F 64 */	stw r0, 0xf64(r31)
/* 80797844  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80797848  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8079784C  7C 08 03 A6 */	mtlr r0
/* 80797850  38 21 00 10 */	addi r1, r1, 0x10
/* 80797854  4E 80 00 20 */	blr 
