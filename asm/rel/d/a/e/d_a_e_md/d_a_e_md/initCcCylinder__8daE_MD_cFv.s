lbl_80708DF8:
/* 80708DF8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80708DFC  7C 08 02 A6 */	mflr r0
/* 80708E00  90 01 00 14 */	stw r0, 0x14(r1)
/* 80708E04  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80708E08  7C 7F 1B 78 */	mr r31, r3
/* 80708E0C  38 7F 08 B0 */	addi r3, r31, 0x8b0
/* 80708E10  38 80 00 C8 */	li r4, 0xc8
/* 80708E14  38 A0 00 FF */	li r5, 0xff
/* 80708E18  7F E6 FB 78 */	mr r6, r31
/* 80708E1C  4B 97 AA 45 */	bl Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 80708E20  38 7F 08 EC */	addi r3, r31, 0x8ec
/* 80708E24  3C 80 80 71 */	lis r4, ccCylSrc@ha /* 0x8070A4EC@ha */
/* 80708E28  38 84 A4 EC */	addi r4, r4, ccCylSrc@l /* 0x8070A4EC@l */
/* 80708E2C  4B 97 BA 89 */	bl Set__8dCcD_CylFRC11dCcD_SrcCyl
/* 80708E30  38 1F 08 B0 */	addi r0, r31, 0x8b0
/* 80708E34  90 1F 09 30 */	stw r0, 0x930(r31)
/* 80708E38  38 7F 0A 10 */	addi r3, r31, 0xa10
/* 80708E3C  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80708E40  4B B6 63 9D */	bl SetC__8cM3dGCylFRC4cXyz
/* 80708E44  80 1F 09 88 */	lwz r0, 0x988(r31)
/* 80708E48  60 00 00 01 */	ori r0, r0, 1
/* 80708E4C  90 1F 09 88 */	stw r0, 0x988(r31)
/* 80708E50  80 1F 09 88 */	lwz r0, 0x988(r31)
/* 80708E54  60 00 01 00 */	ori r0, r0, 0x100
/* 80708E58  90 1F 09 88 */	stw r0, 0x988(r31)
/* 80708E5C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80708E60  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80708E64  7C 08 03 A6 */	mtlr r0
/* 80708E68  38 21 00 10 */	addi r1, r1, 0x10
/* 80708E6C  4E 80 00 20 */	blr 
