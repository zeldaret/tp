lbl_80BFE244:
/* 80BFE244  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80BFE248  7C 08 02 A6 */	mflr r0
/* 80BFE24C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80BFE250  39 61 00 20 */	addi r11, r1, 0x20
/* 80BFE254  4B 76 3F 7D */	bl _savegpr_26
/* 80BFE258  7C 7A 1B 78 */	mr r26, r3
/* 80BFE25C  38 7A 0F B8 */	addi r3, r26, 0xfb8
/* 80BFE260  38 80 00 FF */	li r4, 0xff
/* 80BFE264  38 A0 00 FF */	li r5, 0xff
/* 80BFE268  7F 46 D3 78 */	mr r6, r26
/* 80BFE26C  4B 48 55 F5 */	bl Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 80BFE270  3B 60 00 00 */	li r27, 0
/* 80BFE274  3B E0 00 00 */	li r31, 0
/* 80BFE278  3C 60 80 C0 */	lis r3, ccSphSrc@ha /* 0x80BFFC1C@ha */
/* 80BFE27C  3B A3 FC 1C */	addi r29, r3, ccSphSrc@l /* 0x80BFFC1C@l */
/* 80BFE280  3B DA 0F B8 */	addi r30, r26, 0xfb8
lbl_80BFE284:
/* 80BFE284  7F 9A FA 14 */	add r28, r26, r31
/* 80BFE288  38 7C 0F F4 */	addi r3, r28, 0xff4
/* 80BFE28C  7F A4 EB 78 */	mr r4, r29
/* 80BFE290  4B 48 67 A5 */	bl Set__8dCcD_SphFRC11dCcD_SrcSph
/* 80BFE294  93 DC 10 38 */	stw r30, 0x1038(r28)
/* 80BFE298  38 7C 11 18 */	addi r3, r28, 0x1118
/* 80BFE29C  38 9A 04 D0 */	addi r4, r26, 0x4d0
/* 80BFE2A0  4B 67 13 A9 */	bl SetC__8cM3dGSphFRC4cXyz
/* 80BFE2A4  3B 7B 00 01 */	addi r27, r27, 1
/* 80BFE2A8  2C 1B 00 03 */	cmpwi r27, 3
/* 80BFE2AC  3B FF 01 38 */	addi r31, r31, 0x138
/* 80BFE2B0  41 80 FF D4 */	blt lbl_80BFE284
/* 80BFE2B4  39 61 00 20 */	addi r11, r1, 0x20
/* 80BFE2B8  4B 76 3F 65 */	bl _restgpr_26
/* 80BFE2BC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80BFE2C0  7C 08 03 A6 */	mtlr r0
/* 80BFE2C4  38 21 00 20 */	addi r1, r1, 0x20
/* 80BFE2C8  4E 80 00 20 */	blr 
