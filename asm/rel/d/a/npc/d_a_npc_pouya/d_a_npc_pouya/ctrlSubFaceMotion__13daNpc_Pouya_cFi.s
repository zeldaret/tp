lbl_80AAEBCC:
/* 80AAEBCC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AAEBD0  7C 08 02 A6 */	mflr r0
/* 80AAEBD4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AAEBD8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AAEBDC  93 C1 00 08 */	stw r30, 8(r1)
/* 80AAEBE0  7C 7F 1B 78 */	mr r31, r3
/* 80AAEBE4  38 00 00 00 */	li r0, 0
/* 80AAEBE8  2C 04 00 00 */	cmpwi r4, 0
/* 80AAEBEC  41 82 00 98 */	beq lbl_80AAEC84
/* 80AAEBF0  80 BF 0B 58 */	lwz r5, 0xb58(r31)
/* 80AAEBF4  28 05 00 06 */	cmplwi r5, 6
/* 80AAEBF8  41 81 00 84 */	bgt lbl_80AAEC7C
/* 80AAEBFC  3C 60 80 AB */	lis r3, lit_4598@ha
/* 80AAEC00  38 83 2A 34 */	addi r4, r3, lit_4598@l
/* 80AAEC04  54 A3 10 3A */	slwi r3, r5, 2
/* 80AAEC08  7C 64 18 2E */	lwzx r3, r4, r3
/* 80AAEC0C  7C 69 03 A6 */	mtctr r3
/* 80AAEC10  4E 80 04 20 */	bctr 
lbl_80AAEC14:
/* 80AAEC14  80 9F 0D 98 */	lwz r4, 0xd98(r31)
/* 80AAEC18  38 60 FE FB */	li r3, -261
/* 80AAEC1C  7C 83 18 38 */	and r3, r4, r3
/* 80AAEC20  90 7F 0D 98 */	stw r3, 0xd98(r31)
/* 80AAEC24  38 60 00 00 */	li r3, 0
/* 80AAEC28  98 7F 0F CC */	stb r3, 0xfcc(r31)
/* 80AAEC2C  98 7F 0F CD */	stb r3, 0xfcd(r31)
/* 80AAEC30  48 00 00 54 */	b lbl_80AAEC84
lbl_80AAEC34:
/* 80AAEC34  80 9F 0D 98 */	lwz r4, 0xd98(r31)
/* 80AAEC38  38 60 FE FB */	li r3, -261
/* 80AAEC3C  7C 83 18 38 */	and r3, r4, r3
/* 80AAEC40  90 7F 0D 98 */	stw r3, 0xd98(r31)
/* 80AAEC44  38 60 00 01 */	li r3, 1
/* 80AAEC48  98 7F 0F CC */	stb r3, 0xfcc(r31)
/* 80AAEC4C  38 60 00 00 */	li r3, 0
/* 80AAEC50  98 7F 0F CD */	stb r3, 0xfcd(r31)
/* 80AAEC54  48 00 00 30 */	b lbl_80AAEC84
lbl_80AAEC58:
/* 80AAEC58  80 9F 0D 98 */	lwz r4, 0xd98(r31)
/* 80AAEC5C  38 60 FE FB */	li r3, -261
/* 80AAEC60  7C 83 18 38 */	and r3, r4, r3
/* 80AAEC64  90 7F 0D 98 */	stw r3, 0xd98(r31)
/* 80AAEC68  38 60 00 02 */	li r3, 2
/* 80AAEC6C  98 7F 0F CC */	stb r3, 0xfcc(r31)
/* 80AAEC70  38 60 00 00 */	li r3, 0
/* 80AAEC74  98 7F 0F CD */	stb r3, 0xfcd(r31)
/* 80AAEC78  48 00 00 0C */	b lbl_80AAEC84
lbl_80AAEC7C:
/* 80AAEC7C  38 60 FF FF */	li r3, -1
/* 80AAEC80  98 7F 0F CC */	stb r3, 0xfcc(r31)
lbl_80AAEC84:
/* 80AAEC84  88 7F 0F CC */	lbz r3, 0xfcc(r31)
/* 80AAEC88  7C 63 07 75 */	extsb. r3, r3
/* 80AAEC8C  41 80 01 14 */	blt lbl_80AAEDA0
/* 80AAEC90  80 7F 0D 98 */	lwz r3, 0xd98(r31)
/* 80AAEC94  54 63 05 EF */	rlwinm. r3, r3, 0, 0x17, 0x17
/* 80AAEC98  41 82 00 50 */	beq lbl_80AAECE8
/* 80AAEC9C  38 80 00 01 */	li r4, 1
/* 80AAECA0  88 7F 06 61 */	lbz r3, 0x661(r31)
/* 80AAECA4  54 63 07 FF */	clrlwi. r3, r3, 0x1f
/* 80AAECA8  40 82 00 1C */	bne lbl_80AAECC4
/* 80AAECAC  3C 60 80 AB */	lis r3, lit_4204@ha
/* 80AAECB0  C0 23 20 B8 */	lfs f1, lit_4204@l(r3)
/* 80AAECB4  C0 1F 06 68 */	lfs f0, 0x668(r31)
/* 80AAECB8  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80AAECBC  41 82 00 08 */	beq lbl_80AAECC4
/* 80AAECC0  38 80 00 00 */	li r4, 0
lbl_80AAECC4:
/* 80AAECC4  54 83 06 3F */	clrlwi. r3, r4, 0x18
/* 80AAECC8  41 82 00 20 */	beq lbl_80AAECE8
/* 80AAECCC  80 9F 0D 98 */	lwz r4, 0xd98(r31)
/* 80AAECD0  38 60 FE FB */	li r3, -261
/* 80AAECD4  7C 83 18 38 */	and r3, r4, r3
/* 80AAECD8  90 7F 0D 98 */	stw r3, 0xd98(r31)
/* 80AAECDC  88 7F 0F CD */	lbz r3, 0xfcd(r31)
/* 80AAECE0  38 63 00 01 */	addi r3, r3, 1
/* 80AAECE4  98 7F 0F CD */	stb r3, 0xfcd(r31)
lbl_80AAECE8:
/* 80AAECE8  80 7F 0D 98 */	lwz r3, 0xd98(r31)
/* 80AAECEC  54 63 05 EF */	rlwinm. r3, r3, 0, 0x17, 0x17
/* 80AAECF0  40 82 00 B0 */	bne lbl_80AAEDA0
/* 80AAECF4  88 7F 0F CC */	lbz r3, 0xfcc(r31)
/* 80AAECF8  7C 63 07 74 */	extsb r3, r3
/* 80AAECFC  54 64 10 3A */	slwi r4, r3, 2
/* 80AAED00  3C 60 80 AB */	lis r3, brkSeqList@ha
/* 80AAED04  38 63 2A 28 */	addi r3, r3, brkSeqList@l
/* 80AAED08  7C 83 20 2E */	lwzx r4, r3, r4
/* 80AAED0C  88 7F 0F CD */	lbz r3, 0xfcd(r31)
/* 80AAED10  7C 63 07 74 */	extsb r3, r3
/* 80AAED14  54 63 10 3A */	slwi r3, r3, 2
/* 80AAED18  7F C4 18 2E */	lwzx r30, r4, r3
/* 80AAED1C  28 1E 00 00 */	cmplwi r30, 0
/* 80AAED20  41 82 00 28 */	beq lbl_80AAED48
/* 80AAED24  7F E3 FB 78 */	mr r3, r31
/* 80AAED28  80 1E 00 08 */	lwz r0, 8(r30)
/* 80AAED2C  54 00 10 3A */	slwi r0, r0, 2
/* 80AAED30  3C 80 80 AB */	lis r4, l_resNameList@ha
/* 80AAED34  38 84 22 70 */	addi r4, r4, l_resNameList@l
/* 80AAED38  7C 84 00 2E */	lwzx r4, r4, r0
/* 80AAED3C  80 BE 00 00 */	lwz r5, 0(r30)
/* 80AAED40  4B 69 94 08 */	b getTevRegKeyAnmP__8daNpcT_cFPCci
/* 80AAED44  7C 60 1B 78 */	mr r0, r3
lbl_80AAED48:
/* 80AAED48  28 00 00 00 */	cmplwi r0, 0
/* 80AAED4C  41 82 00 3C */	beq lbl_80AAED88
/* 80AAED50  80 7F 05 78 */	lwz r3, 0x578(r31)
/* 80AAED54  80 63 00 04 */	lwz r3, 4(r3)
/* 80AAED58  80 A3 00 04 */	lwz r5, 4(r3)
/* 80AAED5C  7F E3 FB 78 */	mr r3, r31
/* 80AAED60  7C 04 03 78 */	mr r4, r0
/* 80AAED64  3C C0 80 AB */	lis r6, lit_4414@ha
/* 80AAED68  C0 26 20 C8 */	lfs f1, lit_4414@l(r6)
/* 80AAED6C  80 DE 00 04 */	lwz r6, 4(r30)
/* 80AAED70  4B 69 96 08 */	b setBrkAnm__8daNpcT_cFP15J3DAnmTevRegKeyP12J3DModelDatafi
/* 80AAED74  2C 03 00 00 */	cmpwi r3, 0
/* 80AAED78  41 82 00 10 */	beq lbl_80AAED88
/* 80AAED7C  80 1F 0D 98 */	lwz r0, 0xd98(r31)
/* 80AAED80  60 00 00 04 */	ori r0, r0, 4
/* 80AAED84  90 1F 0D 98 */	stw r0, 0xd98(r31)
lbl_80AAED88:
/* 80AAED88  80 1F 06 70 */	lwz r0, 0x670(r31)
/* 80AAED8C  28 00 00 00 */	cmplwi r0, 0
/* 80AAED90  41 82 00 10 */	beq lbl_80AAEDA0
/* 80AAED94  80 1F 0D 98 */	lwz r0, 0xd98(r31)
/* 80AAED98  60 00 01 00 */	ori r0, r0, 0x100
/* 80AAED9C  90 1F 0D 98 */	stw r0, 0xd98(r31)
lbl_80AAEDA0:
/* 80AAEDA0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AAEDA4  83 C1 00 08 */	lwz r30, 8(r1)
/* 80AAEDA8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AAEDAC  7C 08 03 A6 */	mtlr r0
/* 80AAEDB0  38 21 00 10 */	addi r1, r1, 0x10
/* 80AAEDB4  4E 80 00 20 */	blr 
