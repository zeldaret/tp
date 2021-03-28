lbl_8064DA48:
/* 8064DA48  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8064DA4C  7C 08 02 A6 */	mflr r0
/* 8064DA50  90 01 00 14 */	stw r0, 0x14(r1)
/* 8064DA54  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8064DA58  7C 7F 1B 78 */	mr r31, r3
/* 8064DA5C  80 63 06 E8 */	lwz r3, 0x6e8(r3)
/* 8064DA60  2C 03 00 00 */	cmpwi r3, 0
/* 8064DA64  41 82 00 0C */	beq lbl_8064DA70
/* 8064DA68  38 03 FF FF */	addi r0, r3, -1
/* 8064DA6C  90 1F 06 E8 */	stw r0, 0x6e8(r31)
lbl_8064DA70:
/* 8064DA70  80 7F 06 EC */	lwz r3, 0x6ec(r31)
/* 8064DA74  2C 03 00 00 */	cmpwi r3, 0
/* 8064DA78  41 82 00 0C */	beq lbl_8064DA84
/* 8064DA7C  38 03 FF FF */	addi r0, r3, -1
/* 8064DA80  90 1F 06 EC */	stw r0, 0x6ec(r31)
lbl_8064DA84:
/* 8064DA84  A0 7F 06 E4 */	lhz r3, 0x6e4(r31)
/* 8064DA88  28 03 00 00 */	cmplwi r3, 0
/* 8064DA8C  41 82 00 0C */	beq lbl_8064DA98
/* 8064DA90  38 03 FF FF */	addi r0, r3, -1
/* 8064DA94  B0 1F 06 E4 */	sth r0, 0x6e4(r31)
lbl_8064DA98:
/* 8064DA98  80 7F 06 F0 */	lwz r3, 0x6f0(r31)
/* 8064DA9C  2C 03 00 00 */	cmpwi r3, 0
/* 8064DAA0  41 82 00 0C */	beq lbl_8064DAAC
/* 8064DAA4  38 03 FF FF */	addi r0, r3, -1
/* 8064DAA8  90 1F 06 F0 */	stw r0, 0x6f0(r31)
lbl_8064DAAC:
/* 8064DAAC  80 7F 06 F4 */	lwz r3, 0x6f4(r31)
/* 8064DAB0  2C 03 00 00 */	cmpwi r3, 0
/* 8064DAB4  41 82 00 0C */	beq lbl_8064DAC0
/* 8064DAB8  38 03 FF FF */	addi r0, r3, -1
/* 8064DABC  90 1F 06 F4 */	stw r0, 0x6f4(r31)
lbl_8064DAC0:
/* 8064DAC0  88 1F 07 14 */	lbz r0, 0x714(r31)
/* 8064DAC4  2C 00 00 01 */	cmpwi r0, 1
/* 8064DAC8  41 82 00 28 */	beq lbl_8064DAF0
/* 8064DACC  40 80 00 34 */	bge lbl_8064DB00
/* 8064DAD0  2C 00 00 00 */	cmpwi r0, 0
/* 8064DAD4  40 80 00 08 */	bge lbl_8064DADC
/* 8064DAD8  48 00 00 28 */	b lbl_8064DB00
lbl_8064DADC:
/* 8064DADC  38 60 00 0A */	li r3, 0xa
/* 8064DAE0  38 80 00 00 */	li r4, 0
/* 8064DAE4  C0 3F 06 C8 */	lfs f1, 0x6c8(r31)
/* 8064DAE8  4B B5 AD 24 */	b dKy_custom_colset__FUcUcf
/* 8064DAEC  48 00 00 14 */	b lbl_8064DB00
lbl_8064DAF0:
/* 8064DAF0  38 60 00 00 */	li r3, 0
/* 8064DAF4  38 80 00 0A */	li r4, 0xa
/* 8064DAF8  C0 3F 06 C8 */	lfs f1, 0x6c8(r31)
/* 8064DAFC  4B B5 AD 10 */	b dKy_custom_colset__FUcUcf
lbl_8064DB00:
/* 8064DB00  7F E3 FB 78 */	mr r3, r31
/* 8064DB04  4B FF EA A5 */	bl action__10daB_ZANT_cFv
/* 8064DB08  7F E3 FB 78 */	mr r3, r31
/* 8064DB0C  4B FF F0 11 */	bl mtx_set__10daB_ZANT_cFv
/* 8064DB10  88 1F 06 FB */	lbz r0, 0x6fb(r31)
/* 8064DB14  28 00 00 05 */	cmplwi r0, 5
/* 8064DB18  40 82 00 10 */	bne lbl_8064DB28
/* 8064DB1C  7F E3 FB 78 */	mr r3, r31
/* 8064DB20  4B FF F4 89 */	bl cc_ice_set__10daB_ZANT_cFv
/* 8064DB24  48 00 00 0C */	b lbl_8064DB30
lbl_8064DB28:
/* 8064DB28  7F E3 FB 78 */	mr r3, r31
/* 8064DB2C  4B FF F1 E1 */	bl cc_set__10daB_ZANT_cFv
lbl_8064DB30:
/* 8064DB30  38 60 00 01 */	li r3, 1
/* 8064DB34  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8064DB38  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8064DB3C  7C 08 03 A6 */	mtlr r0
/* 8064DB40  38 21 00 10 */	addi r1, r1, 0x10
/* 8064DB44  4E 80 00 20 */	blr 
