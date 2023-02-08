lbl_80D3F65C:
/* 80D3F65C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80D3F660  7C 08 02 A6 */	mflr r0
/* 80D3F664  90 01 00 34 */	stw r0, 0x34(r1)
/* 80D3F668  39 61 00 30 */	addi r11, r1, 0x30
/* 80D3F66C  4B 62 2B 59 */	bl _savegpr_23
/* 80D3F670  7C 77 1B 78 */	mr r23, r3
/* 80D3F674  38 77 07 C4 */	addi r3, r23, 0x7c4
/* 80D3F678  38 80 00 FF */	li r4, 0xff
/* 80D3F67C  38 A0 00 FF */	li r5, 0xff
/* 80D3F680  7E E6 BB 78 */	mr r6, r23
/* 80D3F684  4B 34 41 DD */	bl Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 80D3F688  3B 00 00 00 */	li r24, 0
/* 80D3F68C  3B E0 00 00 */	li r31, 0
/* 80D3F690  3C 60 80 D4 */	lis r3, l_cyl_src@ha /* 0x80D40310@ha */
/* 80D3F694  3B 43 03 10 */	addi r26, r3, l_cyl_src@l /* 0x80D40310@l */
/* 80D3F698  3B 77 07 C4 */	addi r27, r23, 0x7c4
/* 80D3F69C  3C 60 80 D4 */	lis r3, doorCoHitCallBack__FP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf@ha /* 0x80D3F4DC@ha */
/* 80D3F6A0  3B 83 F4 DC */	addi r28, r3, doorCoHitCallBack__FP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf@l /* 0x80D3F4DC@l */
/* 80D3F6A4  3C 60 80 D4 */	lis r3, doorTgHitCallBack__FP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf@ha /* 0x80D3F570@ha */
/* 80D3F6A8  3B A3 F5 70 */	addi r29, r3, doorTgHitCallBack__FP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf@l /* 0x80D3F570@l */
/* 80D3F6AC  3C 60 80 D4 */	lis r3, l_cyl_data@ha /* 0x80D401EC@ha */
/* 80D3F6B0  3B C3 01 EC */	addi r30, r3, l_cyl_data@l /* 0x80D401EC@l */
lbl_80D3F6B4:
/* 80D3F6B4  7F 37 FA 14 */	add r25, r23, r31
/* 80D3F6B8  38 79 08 00 */	addi r3, r25, 0x800
/* 80D3F6BC  7F 44 D3 78 */	mr r4, r26
/* 80D3F6C0  4B 34 51 F5 */	bl Set__8dCcD_CylFRC11dCcD_SrcCyl
/* 80D3F6C4  93 79 08 44 */	stw r27, 0x844(r25)
/* 80D3F6C8  93 99 08 F0 */	stw r28, 0x8f0(r25)
/* 80D3F6CC  93 B9 08 A4 */	stw r29, 0x8a4(r25)
/* 80D3F6D0  38 79 09 24 */	addi r3, r25, 0x924
/* 80D3F6D4  88 17 0E 30 */	lbz r0, 0xe30(r23)
/* 80D3F6D8  1C 00 00 14 */	mulli r0, r0, 0x14
/* 80D3F6DC  7C 9E 02 14 */	add r4, r30, r0
/* 80D3F6E0  4B 52 FA 35 */	bl Set__8cM3dGCylFRC9cM3dGCylS
/* 80D3F6E4  3B 18 00 01 */	addi r24, r24, 1
/* 80D3F6E8  2C 18 00 04 */	cmpwi r24, 4
/* 80D3F6EC  3B FF 01 3C */	addi r31, r31, 0x13c
/* 80D3F6F0  41 80 FF C4 */	blt lbl_80D3F6B4
/* 80D3F6F4  38 77 0C F0 */	addi r3, r23, 0xcf0
/* 80D3F6F8  3C 80 80 D4 */	lis r4, l_cyl_src2@ha /* 0x80D40354@ha */
/* 80D3F6FC  38 84 03 54 */	addi r4, r4, l_cyl_src2@l /* 0x80D40354@l */
/* 80D3F700  4B 34 51 B5 */	bl Set__8dCcD_CylFRC11dCcD_SrcCyl
/* 80D3F704  38 17 07 C4 */	addi r0, r23, 0x7c4
/* 80D3F708  90 17 0D 34 */	stw r0, 0xd34(r23)
/* 80D3F70C  38 77 0E 14 */	addi r3, r23, 0xe14
/* 80D3F710  88 17 0E 30 */	lbz r0, 0xe30(r23)
/* 80D3F714  1C A0 00 14 */	mulli r5, r0, 0x14
/* 80D3F718  3C 80 80 D4 */	lis r4, l_cyl_data2@ha /* 0x80D40228@ha */
/* 80D3F71C  38 04 02 28 */	addi r0, r4, l_cyl_data2@l /* 0x80D40228@l */
/* 80D3F720  7C 80 2A 14 */	add r4, r0, r5
/* 80D3F724  4B 52 F9 F1 */	bl Set__8cM3dGCylFRC9cM3dGCylS
/* 80D3F728  39 61 00 30 */	addi r11, r1, 0x30
/* 80D3F72C  4B 62 2A E5 */	bl _restgpr_23
/* 80D3F730  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80D3F734  7C 08 03 A6 */	mtlr r0
/* 80D3F738  38 21 00 30 */	addi r1, r1, 0x30
/* 80D3F73C  4E 80 00 20 */	blr 
