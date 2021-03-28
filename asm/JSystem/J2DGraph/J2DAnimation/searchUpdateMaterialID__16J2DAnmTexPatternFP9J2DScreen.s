lbl_8030BD10:
/* 8030BD10  94 21 FE D0 */	stwu r1, -0x130(r1)
/* 8030BD14  7C 08 02 A6 */	mflr r0
/* 8030BD18  90 01 01 34 */	stw r0, 0x134(r1)
/* 8030BD1C  39 61 01 30 */	addi r11, r1, 0x130
/* 8030BD20  48 05 64 B1 */	bl _savegpr_26
/* 8030BD24  7C 7D 1B 78 */	mr r29, r3
/* 8030BD28  7C 9E 23 79 */	or. r30, r4, r4
/* 8030BD2C  41 82 01 A4 */	beq lbl_8030BED0
/* 8030BD30  80 1E 01 10 */	lwz r0, 0x110(r30)
/* 8030BD34  28 00 00 00 */	cmplwi r0, 0
/* 8030BD38  41 82 01 98 */	beq lbl_8030BED0
/* 8030BD3C  80 1E 01 08 */	lwz r0, 0x108(r30)
/* 8030BD40  28 00 00 00 */	cmplwi r0, 0
/* 8030BD44  41 82 01 8C */	beq lbl_8030BED0
/* 8030BD48  3B 60 00 00 */	li r27, 0
/* 8030BD4C  48 00 00 4C */	b lbl_8030BD98
lbl_8030BD50:
/* 8030BD50  38 7D 00 20 */	addi r3, r29, 0x20
/* 8030BD54  7F 64 DB 78 */	mr r4, r27
/* 8030BD58  4B FD 2D A1 */	bl getName__10JUTNameTabCFUs
/* 8030BD5C  7C 64 1B 78 */	mr r4, r3
/* 8030BD60  80 7E 01 10 */	lwz r3, 0x110(r30)
/* 8030BD64  4B FD 2C F5 */	bl getIndex__10JUTNameTabCFPCc
/* 8030BD68  2C 03 FF FF */	cmpwi r3, -1
/* 8030BD6C  41 82 00 14 */	beq lbl_8030BD80
/* 8030BD70  80 9D 00 1C */	lwz r4, 0x1c(r29)
/* 8030BD74  57 60 0B FC */	rlwinm r0, r27, 1, 0xf, 0x1e
/* 8030BD78  7C 64 03 2E */	sthx r3, r4, r0
/* 8030BD7C  48 00 00 18 */	b lbl_8030BD94
lbl_8030BD80:
/* 8030BD80  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000FFFF@ha */
/* 8030BD84  38 83 FF FF */	addi r4, r3, 0xFFFF /* 0x0000FFFF@l */
/* 8030BD88  80 7D 00 1C */	lwz r3, 0x1c(r29)
/* 8030BD8C  57 60 0B FC */	rlwinm r0, r27, 1, 0xf, 0x1e
/* 8030BD90  7C 83 03 2E */	sthx r4, r3, r0
lbl_8030BD94:
/* 8030BD94  3B 7B 00 01 */	addi r27, r27, 1
lbl_8030BD98:
/* 8030BD98  57 63 04 3E */	clrlwi r3, r27, 0x10
/* 8030BD9C  A0 1D 00 1A */	lhz r0, 0x1a(r29)
/* 8030BDA0  7C 03 00 40 */	cmplw r3, r0
/* 8030BDA4  41 80 FF AC */	blt lbl_8030BD50
/* 8030BDA8  80 7D 00 30 */	lwz r3, 0x30(r29)
/* 8030BDAC  3C 80 80 31 */	lis r4, __dt__Q216J2DAnmTexPattern27J2DAnmTexPatternTIMGPointerFv@ha
/* 8030BDB0  38 84 CB 3C */	addi r4, r4, __dt__Q216J2DAnmTexPattern27J2DAnmTexPatternTIMGPointerFv@l
/* 8030BDB4  48 05 5E B9 */	bl __destroy_new_array
/* 8030BDB8  80 7E 01 08 */	lwz r3, 0x108(r30)
/* 8030BDBC  A3 83 00 00 */	lhz r28, 0(r3)
/* 8030BDC0  57 83 18 38 */	slwi r3, r28, 3
/* 8030BDC4  38 63 00 10 */	addi r3, r3, 0x10
/* 8030BDC8  4B FC 2E FD */	bl __nwa__FUl
/* 8030BDCC  3C 80 80 31 */	lis r4, __ct__Q216J2DAnmTexPattern27J2DAnmTexPatternTIMGPointerFv@ha
/* 8030BDD0  38 84 CB 2C */	addi r4, r4, __ct__Q216J2DAnmTexPattern27J2DAnmTexPatternTIMGPointerFv@l
/* 8030BDD4  3C A0 80 31 */	lis r5, __dt__Q216J2DAnmTexPattern27J2DAnmTexPatternTIMGPointerFv@ha
/* 8030BDD8  38 A5 CB 3C */	addi r5, r5, __dt__Q216J2DAnmTexPattern27J2DAnmTexPatternTIMGPointerFv@l
/* 8030BDDC  38 C0 00 08 */	li r6, 8
/* 8030BDE0  7F 87 E3 78 */	mr r7, r28
/* 8030BDE4  48 05 61 31 */	bl __construct_new_array
/* 8030BDE8  90 7D 00 30 */	stw r3, 0x30(r29)
/* 8030BDEC  80 1D 00 30 */	lwz r0, 0x30(r29)
/* 8030BDF0  28 00 00 00 */	cmplwi r0, 0
/* 8030BDF4  41 82 00 DC */	beq lbl_8030BED0
/* 8030BDF8  38 00 00 00 */	li r0, 0
/* 8030BDFC  98 01 00 08 */	stb r0, 8(r1)
/* 8030BE00  3B E0 00 00 */	li r31, 0
/* 8030BE04  48 00 00 B8 */	b lbl_8030BEBC
lbl_8030BE08:
/* 8030BE08  7F E4 FB 78 */	mr r4, r31
/* 8030BE0C  48 00 11 05 */	bl getResReference__15J2DResReferenceCFUs
/* 8030BE10  7C 64 1B 79 */	or. r4, r3, r3
/* 8030BE14  3B 40 00 00 */	li r26, 0
/* 8030BE18  41 82 00 48 */	beq lbl_8030BE60
/* 8030BE1C  38 61 00 08 */	addi r3, r1, 8
/* 8030BE20  3C A0 54 49 */	lis r5, 0x5449 /* 0x54494D47@ha */
/* 8030BE24  38 A5 4D 47 */	addi r5, r5, 0x4D47 /* 0x54494D47@l */
/* 8030BE28  38 C0 00 00 */	li r6, 0
/* 8030BE2C  4B FD 22 F5 */	bl getResource__15JUTResReferenceFPCvUlP10JKRArchive
/* 8030BE30  7C 7A 1B 79 */	or. r26, r3, r3
/* 8030BE34  40 82 00 2C */	bne lbl_8030BE60
/* 8030BE38  83 8D 90 10 */	lwz r28, mDataManage__9J2DScreen(r13)
/* 8030BE3C  28 1C 00 00 */	cmplwi r28, 0
/* 8030BE40  41 82 00 20 */	beq lbl_8030BE60
/* 8030BE44  80 7E 01 08 */	lwz r3, 0x108(r30)
/* 8030BE48  7F E4 FB 78 */	mr r4, r31
/* 8030BE4C  48 00 10 F9 */	bl getName__15J2DResReferenceCFUs
/* 8030BE50  7C 64 1B 78 */	mr r4, r3
/* 8030BE54  7F 83 E3 78 */	mr r3, r28
/* 8030BE58  48 00 0F C1 */	bl get__13J2DDataManageFPCc
/* 8030BE5C  7C 7A 1B 78 */	mr r26, r3
lbl_8030BE60:
/* 8030BE60  80 7D 00 30 */	lwz r3, 0x30(r29)
/* 8030BE64  57 FB 1B 78 */	rlwinm r27, r31, 3, 0xd, 0x1c
/* 8030BE68  7F 43 D9 2E */	stwx r26, r3, r27
/* 8030BE6C  28 1A 00 00 */	cmplwi r26, 0
/* 8030BE70  41 82 00 48 */	beq lbl_8030BEB8
/* 8030BE74  88 1A 00 08 */	lbz r0, 8(r26)
/* 8030BE78  28 00 00 00 */	cmplwi r0, 0
/* 8030BE7C  41 82 00 3C */	beq lbl_8030BEB8
/* 8030BE80  38 60 00 18 */	li r3, 0x18
/* 8030BE84  4B FC 2D C9 */	bl __nw__FUl
/* 8030BE88  7C 7C 1B 79 */	or. r28, r3, r3
/* 8030BE8C  41 82 00 20 */	beq lbl_8030BEAC
/* 8030BE90  38 80 00 00 */	li r4, 0
/* 8030BE94  88 BA 00 09 */	lbz r5, 9(r26)
/* 8030BE98  88 DA 00 01 */	lbz r6, 1(r26)
/* 8030BE9C  A0 FA 00 0A */	lhz r7, 0xa(r26)
/* 8030BEA0  80 1A 00 0C */	lwz r0, 0xc(r26)
/* 8030BEA4  7D 1A 02 14 */	add r8, r26, r0
/* 8030BEA8  4B FD 2A 75 */	bl storeTLUT__10JUTPaletteF7_GXTlut10_GXTlutFmt15JUTTransparencyUsPv
lbl_8030BEAC:
/* 8030BEAC  80 7D 00 30 */	lwz r3, 0x30(r29)
/* 8030BEB0  38 1B 00 04 */	addi r0, r27, 4
/* 8030BEB4  7F 83 01 2E */	stwx r28, r3, r0
lbl_8030BEB8:
/* 8030BEB8  3B FF 00 01 */	addi r31, r31, 1
lbl_8030BEBC:
/* 8030BEBC  57 E4 04 3E */	clrlwi r4, r31, 0x10
/* 8030BEC0  80 7E 01 08 */	lwz r3, 0x108(r30)
/* 8030BEC4  A0 03 00 00 */	lhz r0, 0(r3)
/* 8030BEC8  7C 04 00 40 */	cmplw r4, r0
/* 8030BECC  41 80 FF 3C */	blt lbl_8030BE08
lbl_8030BED0:
/* 8030BED0  39 61 01 30 */	addi r11, r1, 0x130
/* 8030BED4  48 05 63 49 */	bl _restgpr_26
/* 8030BED8  80 01 01 34 */	lwz r0, 0x134(r1)
/* 8030BEDC  7C 08 03 A6 */	mtlr r0
/* 8030BEE0  38 21 01 30 */	addi r1, r1, 0x130
/* 8030BEE4  4E 80 00 20 */	blr 
