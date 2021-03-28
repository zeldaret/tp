lbl_80BB0724:
/* 80BB0724  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80BB0728  7C 08 02 A6 */	mflr r0
/* 80BB072C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80BB0730  39 61 00 20 */	addi r11, r1, 0x20
/* 80BB0734  4B 7B 1A 9C */	b _savegpr_26
/* 80BB0738  7C 7F 1B 78 */	mr r31, r3
/* 80BB073C  3B 80 FF FF */	li r28, -1
/* 80BB0740  3B 60 00 01 */	li r27, 1
/* 80BB0744  88 03 10 D2 */	lbz r0, 0x10d2(r3)
/* 80BB0748  28 00 00 00 */	cmplwi r0, 0
/* 80BB074C  41 82 00 A4 */	beq lbl_80BB07F0
/* 80BB0750  80 7F 10 C0 */	lwz r3, 0x10c0(r31)
/* 80BB0754  54 60 07 BD */	rlwinm. r0, r3, 0, 0x1e, 0x1e
/* 80BB0758  54 63 07 7A */	rlwinm r3, r3, 0, 0x1d, 0x1d
/* 80BB075C  41 82 00 1C */	beq lbl_80BB0778
/* 80BB0760  2C 03 00 00 */	cmpwi r3, 0
/* 80BB0764  41 82 00 0C */	beq lbl_80BB0770
/* 80BB0768  38 00 00 08 */	li r0, 8
/* 80BB076C  48 00 00 20 */	b lbl_80BB078C
lbl_80BB0770:
/* 80BB0770  38 00 00 13 */	li r0, 0x13
/* 80BB0774  48 00 00 18 */	b lbl_80BB078C
lbl_80BB0778:
/* 80BB0778  2C 03 00 00 */	cmpwi r3, 0
/* 80BB077C  41 82 00 0C */	beq lbl_80BB0788
/* 80BB0780  38 00 00 08 */	li r0, 8
/* 80BB0784  48 00 00 08 */	b lbl_80BB078C
lbl_80BB0788:
/* 80BB0788  38 00 00 13 */	li r0, 0x13
lbl_80BB078C:
/* 80BB078C  3B 40 00 00 */	li r26, 0
/* 80BB0790  3B C0 00 00 */	li r30, 0
/* 80BB0794  7C 1D 07 34 */	extsh r29, r0
lbl_80BB0798:
/* 80BB0798  38 1E 10 C4 */	addi r0, r30, 0x10c4
/* 80BB079C  7C 1F 02 AE */	lhax r0, r31, r0
/* 80BB07A0  7C 00 E8 00 */	cmpw r0, r29
/* 80BB07A4  41 80 00 38 */	blt lbl_80BB07DC
/* 80BB07A8  38 7F 10 D4 */	addi r3, r31, 0x10d4
/* 80BB07AC  7F E4 FB 78 */	mr r4, r31
/* 80BB07B0  3C A0 80 BB */	lis r5, M_lin5__Q29daObjBm_c5Bgc_c@ha
/* 80BB07B4  38 A5 3D 14 */	addi r5, r5, M_lin5__Q29daObjBm_c5Bgc_c@l
/* 80BB07B8  38 C0 00 05 */	li r6, 5
/* 80BB07BC  3C E0 80 BB */	lis r7, M_dir_base__9daObjBm_c@ha
/* 80BB07C0  38 E7 38 18 */	addi r7, r7, M_dir_base__9daObjBm_c@l
/* 80BB07C4  7C E7 F2 AE */	lhax r7, r7, r30
/* 80BB07C8  48 00 09 8D */	bl chk_wall_pre__Q29daObjBm_c5Bgc_cFPC10fopAc_ac_cPCQ29daObjBm_c8BgcSrc_cis
/* 80BB07CC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80BB07D0  40 82 00 10 */	bne lbl_80BB07E0
/* 80BB07D4  7F 5C D3 78 */	mr r28, r26
/* 80BB07D8  48 00 00 08 */	b lbl_80BB07E0
lbl_80BB07DC:
/* 80BB07DC  3B 60 00 00 */	li r27, 0
lbl_80BB07E0:
/* 80BB07E0  3B 5A 00 01 */	addi r26, r26, 1
/* 80BB07E4  2C 1A 00 04 */	cmpwi r26, 4
/* 80BB07E8  3B DE 00 02 */	addi r30, r30, 2
/* 80BB07EC  41 80 FF AC */	blt lbl_80BB0798
lbl_80BB07F0:
/* 80BB07F0  57 60 06 3F */	clrlwi. r0, r27, 0x18
/* 80BB07F4  41 82 00 0C */	beq lbl_80BB0800
/* 80BB07F8  7F E3 FB 78 */	mr r3, r31
/* 80BB07FC  48 00 05 ED */	bl clr_moment_cnt__9daObjBm_cFv
lbl_80BB0800:
/* 80BB0800  38 00 00 00 */	li r0, 0
/* 80BB0804  98 1F 10 D2 */	stb r0, 0x10d2(r31)
/* 80BB0808  7F 83 E3 78 */	mr r3, r28
/* 80BB080C  39 61 00 20 */	addi r11, r1, 0x20
/* 80BB0810  4B 7B 1A 0C */	b _restgpr_26
/* 80BB0814  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80BB0818  7C 08 03 A6 */	mtlr r0
/* 80BB081C  38 21 00 20 */	addi r1, r1, 0x20
/* 80BB0820  4E 80 00 20 */	blr 
