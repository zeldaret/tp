lbl_806B95BC:
/* 806B95BC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 806B95C0  7C 08 02 A6 */	mflr r0
/* 806B95C4  90 01 00 24 */	stw r0, 0x24(r1)
/* 806B95C8  39 61 00 20 */	addi r11, r1, 0x20
/* 806B95CC  4B CA 8C 05 */	bl _savegpr_26
/* 806B95D0  7C 7A 1B 78 */	mr r26, r3
/* 806B95D4  38 7A 0F 08 */	addi r3, r26, 0xf08
/* 806B95D8  38 80 00 FE */	li r4, 0xfe
/* 806B95DC  38 A0 00 FF */	li r5, 0xff
/* 806B95E0  7F 46 D3 78 */	mr r6, r26
/* 806B95E4  4B 9C A2 7D */	bl Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 806B95E8  3B 60 00 00 */	li r27, 0
/* 806B95EC  3B E0 00 00 */	li r31, 0
/* 806B95F0  3C 60 80 6C */	lis r3, ccSphSrc@ha /* 0x806BB744@ha */
/* 806B95F4  3B A3 B7 44 */	addi r29, r3, ccSphSrc@l /* 0x806BB744@l */
/* 806B95F8  3B DA 0F 08 */	addi r30, r26, 0xf08
lbl_806B95FC:
/* 806B95FC  7F 9A FA 14 */	add r28, r26, r31
/* 806B9600  38 7C 08 88 */	addi r3, r28, 0x888
/* 806B9604  7F A4 EB 78 */	mr r4, r29
/* 806B9608  4B 9C B4 2D */	bl Set__8dCcD_SphFRC11dCcD_SrcSph
/* 806B960C  93 DC 08 CC */	stw r30, 0x8cc(r28)
/* 806B9610  38 7C 09 AC */	addi r3, r28, 0x9ac
/* 806B9614  38 9A 04 D0 */	addi r4, r26, 0x4d0
/* 806B9618  4B BB 60 31 */	bl SetC__8cM3dGSphFRC4cXyz
/* 806B961C  80 1C 09 24 */	lwz r0, 0x924(r28)
/* 806B9620  54 00 07 B8 */	rlwinm r0, r0, 0, 0x1e, 0x1c
/* 806B9624  90 1C 09 24 */	stw r0, 0x924(r28)
/* 806B9628  80 1C 08 A0 */	lwz r0, 0x8a0(r28)
/* 806B962C  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 806B9630  90 1C 08 A0 */	stw r0, 0x8a0(r28)
/* 806B9634  80 1C 08 88 */	lwz r0, 0x888(r28)
/* 806B9638  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 806B963C  90 1C 08 88 */	stw r0, 0x888(r28)
/* 806B9640  3B 7B 00 01 */	addi r27, r27, 1
/* 806B9644  2C 1B 00 03 */	cmpwi r27, 3
/* 806B9648  3B FF 01 38 */	addi r31, r31, 0x138
/* 806B964C  41 80 FF B0 */	blt lbl_806B95FC
/* 806B9650  7F 43 D3 78 */	mr r3, r26
/* 806B9654  48 00 07 29 */	bl OnAt__8daE_FK_cFv
/* 806B9658  39 61 00 20 */	addi r11, r1, 0x20
/* 806B965C  4B CA 8B C1 */	bl _restgpr_26
/* 806B9660  80 01 00 24 */	lwz r0, 0x24(r1)
/* 806B9664  7C 08 03 A6 */	mtlr r0
/* 806B9668  38 21 00 20 */	addi r1, r1, 0x20
/* 806B966C  4E 80 00 20 */	blr 
