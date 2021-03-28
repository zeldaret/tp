lbl_80BC08B0:
/* 80BC08B0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80BC08B4  7C 08 02 A6 */	mflr r0
/* 80BC08B8  90 01 00 34 */	stw r0, 0x34(r1)
/* 80BC08BC  39 61 00 30 */	addi r11, r1, 0x30
/* 80BC08C0  4B 7A 19 08 */	b _savegpr_24
/* 80BC08C4  7C 7A 1B 78 */	mr r26, r3
/* 80BC08C8  3C 60 80 BC */	lis r3, lit_3896@ha
/* 80BC08CC  3B C3 21 48 */	addi r30, r3, lit_3896@l
/* 80BC08D0  3C 7A 00 01 */	addis r3, r26, 1
/* 80BC08D4  38 80 00 FF */	li r4, 0xff
/* 80BC08D8  38 A0 00 FF */	li r5, 0xff
/* 80BC08DC  7F 46 D3 78 */	mr r6, r26
/* 80BC08E0  38 63 B1 AC */	addi r3, r3, -20052
/* 80BC08E4  4B 4C 2F 7C */	b Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 80BC08E8  3B BA 05 70 */	addi r29, r26, 0x570
/* 80BC08EC  3B 80 00 00 */	li r28, 0
/* 80BC08F0  3F FA 00 01 */	addis r31, r26, 1
/* 80BC08F4  48 00 00 A4 */	b lbl_80BC0998
lbl_80BC08F8:
/* 80BC08F8  3B 60 00 00 */	li r27, 0
/* 80BC08FC  3B 20 00 00 */	li r25, 0
lbl_80BC0900:
/* 80BC0900  88 1F B1 E8 */	lbz r0, -0x4e18(r31)
/* 80BC0904  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80BC0908  41 82 00 34 */	beq lbl_80BC093C
/* 80BC090C  7F 1D CA 14 */	add r24, r29, r25
/* 80BC0910  38 78 01 04 */	addi r3, r24, 0x104
/* 80BC0914  3C 80 80 BC */	lis r4, wire_cyl_src@ha
/* 80BC0918  38 84 24 1C */	addi r4, r4, wire_cyl_src@l
/* 80BC091C  4B 4C 3F 98 */	b Set__8dCcD_CylFRC11dCcD_SrcCyl
/* 80BC0920  3C 7A 00 01 */	addis r3, r26, 1
/* 80BC0924  38 03 B1 AC */	addi r0, r3, -20052
/* 80BC0928  90 18 01 48 */	stw r0, 0x148(r24)
/* 80BC092C  38 78 02 28 */	addi r3, r24, 0x228
/* 80BC0930  C0 3E 01 58 */	lfs f1, 0x158(r30)
/* 80BC0934  4B 6A E8 C4 */	b SetH__8cM3dGCylFf
/* 80BC0938  48 00 00 48 */	b lbl_80BC0980
lbl_80BC093C:
/* 80BC093C  7F 1D CA 14 */	add r24, r29, r25
/* 80BC0940  38 78 01 04 */	addi r3, r24, 0x104
/* 80BC0944  3C 80 80 BC */	lis r4, himo_cyl_src@ha
/* 80BC0948  38 84 23 D8 */	addi r4, r4, himo_cyl_src@l
/* 80BC094C  4B 4C 3F 68 */	b Set__8dCcD_CylFRC11dCcD_SrcCyl
/* 80BC0950  3C 7A 00 01 */	addis r3, r26, 1
/* 80BC0954  38 03 B1 AC */	addi r0, r3, -20052
/* 80BC0958  90 18 01 48 */	stw r0, 0x148(r24)
/* 80BC095C  88 03 B1 E8 */	lbz r0, -0x4e18(r3)
/* 80BC0960  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80BC0964  40 82 00 1C */	bne lbl_80BC0980
/* 80BC0968  38 78 02 28 */	addi r3, r24, 0x228
/* 80BC096C  C0 3E 01 24 */	lfs f1, 0x124(r30)
/* 80BC0970  4B 6A E8 88 */	b SetH__8cM3dGCylFf
/* 80BC0974  80 18 01 A0 */	lwz r0, 0x1a0(r24)
/* 80BC0978  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80BC097C  90 18 01 A0 */	stw r0, 0x1a0(r24)
lbl_80BC0980:
/* 80BC0980  3B 7B 00 01 */	addi r27, r27, 1
/* 80BC0984  2C 1B 00 02 */	cmpwi r27, 2
/* 80BC0988  3B 39 01 3C */	addi r25, r25, 0x13c
/* 80BC098C  41 80 FF 74 */	blt lbl_80BC0900
/* 80BC0990  3B 9C 00 01 */	addi r28, r28, 1
/* 80BC0994  3B BD 07 0C */	addi r29, r29, 0x70c
lbl_80BC0998:
/* 80BC0998  88 1F B1 EA */	lbz r0, -0x4e16(r31)
/* 80BC099C  7C 00 07 74 */	extsb r0, r0
/* 80BC09A0  7C 1C 00 00 */	cmpw r28, r0
/* 80BC09A4  41 80 FF 54 */	blt lbl_80BC08F8
/* 80BC09A8  88 1F B1 EC */	lbz r0, -0x4e14(r31)
/* 80BC09AC  7C 00 07 75 */	extsb. r0, r0
/* 80BC09B0  41 82 00 78 */	beq lbl_80BC0A28
/* 80BC09B4  7F E3 FB 78 */	mr r3, r31
/* 80BC09B8  3C 80 80 BC */	lis r4, himo_cyl_src@ha
/* 80BC09BC  38 84 23 D8 */	addi r4, r4, himo_cyl_src@l
/* 80BC09C0  38 63 AF 34 */	addi r3, r3, -20684
/* 80BC09C4  4B 4C 3E F0 */	b Set__8dCcD_CylFRC11dCcD_SrcCyl
/* 80BC09C8  3C 7A 00 01 */	addis r3, r26, 1
/* 80BC09CC  38 03 B1 AC */	addi r0, r3, -20052
/* 80BC09D0  90 03 AF 78 */	stw r0, -0x5088(r3)
/* 80BC09D4  3C 80 80 BC */	lis r4, himo_cyl_src@ha
/* 80BC09D8  38 84 23 D8 */	addi r4, r4, himo_cyl_src@l
/* 80BC09DC  38 63 B0 70 */	addi r3, r3, -20368
/* 80BC09E0  4B 4C 3E D4 */	b Set__8dCcD_CylFRC11dCcD_SrcCyl
/* 80BC09E4  3C 7A 00 01 */	addis r3, r26, 1
/* 80BC09E8  38 03 B1 AC */	addi r0, r3, -20052
/* 80BC09EC  90 03 B0 B4 */	stw r0, -0x4f4c(r3)
/* 80BC09F0  C0 3E 01 5C */	lfs f1, 0x15c(r30)
/* 80BC09F4  38 63 B0 58 */	addi r3, r3, -20392
/* 80BC09F8  4B 6A E8 00 */	b SetH__8cM3dGCylFf
/* 80BC09FC  3C 7A 00 01 */	addis r3, r26, 1
/* 80BC0A00  C0 3E 01 5C */	lfs f1, 0x15c(r30)
/* 80BC0A04  38 63 B1 94 */	addi r3, r3, -20076
/* 80BC0A08  4B 6A E7 F0 */	b SetH__8cM3dGCylFf
/* 80BC0A0C  3C 7A 00 01 */	addis r3, r26, 1
/* 80BC0A10  80 03 AF 60 */	lwz r0, -0x50a0(r3)
/* 80BC0A14  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80BC0A18  90 03 AF 60 */	stw r0, -0x50a0(r3)
/* 80BC0A1C  80 03 B0 9C */	lwz r0, -0x4f64(r3)
/* 80BC0A20  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80BC0A24  90 03 B0 9C */	stw r0, -0x4f64(r3)
lbl_80BC0A28:
/* 80BC0A28  39 61 00 30 */	addi r11, r1, 0x30
/* 80BC0A2C  4B 7A 17 E8 */	b _restgpr_24
/* 80BC0A30  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80BC0A34  7C 08 03 A6 */	mtlr r0
/* 80BC0A38  38 21 00 30 */	addi r1, r1, 0x30
/* 80BC0A3C  4E 80 00 20 */	blr 
