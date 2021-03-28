lbl_800E0D8C:
/* 800E0D8C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800E0D90  7C 08 02 A6 */	mflr r0
/* 800E0D94  90 01 00 14 */	stw r0, 0x14(r1)
/* 800E0D98  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800E0D9C  7C 7F 1B 78 */	mr r31, r3
/* 800E0DA0  80 03 05 70 */	lwz r0, 0x570(r3)
/* 800E0DA4  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 800E0DA8  41 82 00 A4 */	beq lbl_800E0E4C
/* 800E0DAC  48 03 4E 75 */	bl checkEventRun__9daAlink_cCFv
/* 800E0DB0  2C 03 00 00 */	cmpwi r3, 0
/* 800E0DB4  40 82 00 8C */	bne lbl_800E0E40
/* 800E0DB8  80 1F 05 74 */	lwz r0, 0x574(r31)
/* 800E0DBC  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 800E0DC0  40 82 00 80 */	bne lbl_800E0E40
/* 800E0DC4  80 1F 31 A0 */	lwz r0, 0x31a0(r31)
/* 800E0DC8  54 00 00 C7 */	rlwinm. r0, r0, 0, 3, 3
/* 800E0DCC  41 82 00 74 */	beq lbl_800E0E40
/* 800E0DD0  7F E3 FB 78 */	mr r3, r31
/* 800E0DD4  4B FD 84 81 */	bl checkNoUpperAnime__9daAlink_cCFv
/* 800E0DD8  2C 03 00 00 */	cmpwi r3, 0
/* 800E0DDC  40 82 00 3C */	bne lbl_800E0E18
/* 800E0DE0  38 60 00 00 */	li r3, 0
/* 800E0DE4  A0 1F 1F BC */	lhz r0, 0x1fbc(r31)
/* 800E0DE8  28 00 02 4C */	cmplwi r0, 0x24c
/* 800E0DEC  41 82 00 10 */	beq lbl_800E0DFC
/* 800E0DF0  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 800E0DF4  28 00 02 4D */	cmplwi r0, 0x24d
/* 800E0DF8  40 82 00 08 */	bne lbl_800E0E00
lbl_800E0DFC:
/* 800E0DFC  38 60 00 01 */	li r3, 1
lbl_800E0E00:
/* 800E0E00  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800E0E04  40 82 00 14 */	bne lbl_800E0E18
/* 800E0E08  7F E3 FB 78 */	mr r3, r31
/* 800E0E0C  4B FF F6 A1 */	bl checkBoomerangThrowAnime__9daAlink_cCFv
/* 800E0E10  2C 03 00 00 */	cmpwi r3, 0
/* 800E0E14  41 82 00 2C */	beq lbl_800E0E40
lbl_800E0E18:
/* 800E0E18  80 7F 31 A0 */	lwz r3, 0x31a0(r31)
/* 800E0E1C  54 60 07 FF */	clrlwi. r0, r3, 0x1f
/* 800E0E20  41 82 00 18 */	beq lbl_800E0E38
/* 800E0E24  54 60 05 6B */	rlwinm. r0, r3, 0, 0x15, 0x15
/* 800E0E28  40 82 00 10 */	bne lbl_800E0E38
/* 800E0E2C  7F E3 FB 78 */	mr r3, r31
/* 800E0E30  48 00 03 A9 */	bl procBoomerangCatchInit__9daAlink_cFv
/* 800E0E34  48 00 00 1C */	b lbl_800E0E50
lbl_800E0E38:
/* 800E0E38  7F E3 FB 78 */	mr r3, r31
/* 800E0E3C  4B FF F7 F5 */	bl setBoomerangCatchAnime__9daAlink_cFv
lbl_800E0E40:
/* 800E0E40  80 1F 05 70 */	lwz r0, 0x570(r31)
/* 800E0E44  54 00 06 F2 */	rlwinm r0, r0, 0, 0x1b, 0x19
/* 800E0E48  90 1F 05 70 */	stw r0, 0x570(r31)
lbl_800E0E4C:
/* 800E0E4C  38 60 00 00 */	li r3, 0
lbl_800E0E50:
/* 800E0E50  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800E0E54  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800E0E58  7C 08 03 A6 */	mtlr r0
/* 800E0E5C  38 21 00 10 */	addi r1, r1, 0x10
/* 800E0E60  4E 80 00 20 */	blr 
