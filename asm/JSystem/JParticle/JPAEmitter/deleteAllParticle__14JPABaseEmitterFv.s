lbl_8027EC60:
/* 8027EC60  48 00 00 AC */	b lbl_8027ED0C
lbl_8027EC64:
/* 8027EC64  38 C0 00 00 */	li r6, 0
/* 8027EC68  28 00 00 01 */	cmplwi r0, 1
/* 8027EC6C  40 82 00 24 */	bne lbl_8027EC90
/* 8027EC70  80 C3 00 CC */	lwz r6, 0xcc(r3)
/* 8027EC74  38 00 00 00 */	li r0, 0
/* 8027EC78  90 03 00 CC */	stw r0, 0xcc(r3)
/* 8027EC7C  90 03 00 C8 */	stw r0, 0xc8(r3)
/* 8027EC80  80 83 00 D0 */	lwz r4, 0xd0(r3)
/* 8027EC84  38 04 FF FF */	addi r0, r4, -1
/* 8027EC88  90 03 00 D0 */	stw r0, 0xd0(r3)
/* 8027EC8C  48 00 00 30 */	b lbl_8027ECBC
lbl_8027EC90:
/* 8027EC90  28 00 00 00 */	cmplwi r0, 0
/* 8027EC94  41 82 00 28 */	beq lbl_8027ECBC
/* 8027EC98  80 C3 00 CC */	lwz r6, 0xcc(r3)
/* 8027EC9C  38 00 00 00 */	li r0, 0
/* 8027ECA0  80 86 00 00 */	lwz r4, 0(r6)
/* 8027ECA4  90 04 00 04 */	stw r0, 4(r4)
/* 8027ECA8  80 06 00 00 */	lwz r0, 0(r6)
/* 8027ECAC  90 03 00 CC */	stw r0, 0xcc(r3)
/* 8027ECB0  80 83 00 D0 */	lwz r4, 0xd0(r3)
/* 8027ECB4  38 04 FF FF */	addi r0, r4, -1
/* 8027ECB8  90 03 00 D0 */	stw r0, 0xd0(r3)
lbl_8027ECBC:
/* 8027ECBC  80 A3 00 E0 */	lwz r5, 0xe0(r3)
/* 8027ECC0  80 05 00 00 */	lwz r0, 0(r5)
/* 8027ECC4  28 00 00 00 */	cmplwi r0, 0
/* 8027ECC8  41 82 00 24 */	beq lbl_8027ECEC
/* 8027ECCC  38 00 00 00 */	li r0, 0
/* 8027ECD0  90 06 00 00 */	stw r0, 0(r6)
/* 8027ECD4  80 05 00 00 */	lwz r0, 0(r5)
/* 8027ECD8  90 06 00 04 */	stw r0, 4(r6)
/* 8027ECDC  80 85 00 00 */	lwz r4, 0(r5)
/* 8027ECE0  90 C4 00 00 */	stw r6, 0(r4)
/* 8027ECE4  90 C5 00 00 */	stw r6, 0(r5)
/* 8027ECE8  48 00 00 18 */	b lbl_8027ED00
lbl_8027ECEC:
/* 8027ECEC  90 C5 00 04 */	stw r6, 4(r5)
/* 8027ECF0  90 C5 00 00 */	stw r6, 0(r5)
/* 8027ECF4  38 00 00 00 */	li r0, 0
/* 8027ECF8  90 06 00 00 */	stw r0, 0(r6)
/* 8027ECFC  90 06 00 04 */	stw r0, 4(r6)
lbl_8027ED00:
/* 8027ED00  80 85 00 08 */	lwz r4, 8(r5)
/* 8027ED04  38 04 00 01 */	addi r0, r4, 1
/* 8027ED08  90 05 00 08 */	stw r0, 8(r5)
lbl_8027ED0C:
/* 8027ED0C  80 03 00 D0 */	lwz r0, 0xd0(r3)
/* 8027ED10  28 00 00 00 */	cmplwi r0, 0
/* 8027ED14  40 82 FF 50 */	bne lbl_8027EC64
/* 8027ED18  48 00 00 AC */	b lbl_8027EDC4
lbl_8027ED1C:
/* 8027ED1C  38 C0 00 00 */	li r6, 0
/* 8027ED20  28 00 00 01 */	cmplwi r0, 1
/* 8027ED24  40 82 00 24 */	bne lbl_8027ED48
/* 8027ED28  80 C3 00 D8 */	lwz r6, 0xd8(r3)
/* 8027ED2C  38 00 00 00 */	li r0, 0
/* 8027ED30  90 03 00 D8 */	stw r0, 0xd8(r3)
/* 8027ED34  90 03 00 D4 */	stw r0, 0xd4(r3)
/* 8027ED38  80 83 00 DC */	lwz r4, 0xdc(r3)
/* 8027ED3C  38 04 FF FF */	addi r0, r4, -1
/* 8027ED40  90 03 00 DC */	stw r0, 0xdc(r3)
/* 8027ED44  48 00 00 30 */	b lbl_8027ED74
lbl_8027ED48:
/* 8027ED48  28 00 00 00 */	cmplwi r0, 0
/* 8027ED4C  41 82 00 28 */	beq lbl_8027ED74
/* 8027ED50  80 C3 00 D8 */	lwz r6, 0xd8(r3)
/* 8027ED54  38 00 00 00 */	li r0, 0
/* 8027ED58  80 86 00 00 */	lwz r4, 0(r6)
/* 8027ED5C  90 04 00 04 */	stw r0, 4(r4)
/* 8027ED60  80 06 00 00 */	lwz r0, 0(r6)
/* 8027ED64  90 03 00 D8 */	stw r0, 0xd8(r3)
/* 8027ED68  80 83 00 DC */	lwz r4, 0xdc(r3)
/* 8027ED6C  38 04 FF FF */	addi r0, r4, -1
/* 8027ED70  90 03 00 DC */	stw r0, 0xdc(r3)
lbl_8027ED74:
/* 8027ED74  80 A3 00 E0 */	lwz r5, 0xe0(r3)
/* 8027ED78  80 05 00 00 */	lwz r0, 0(r5)
/* 8027ED7C  28 00 00 00 */	cmplwi r0, 0
/* 8027ED80  41 82 00 24 */	beq lbl_8027EDA4
/* 8027ED84  38 00 00 00 */	li r0, 0
/* 8027ED88  90 06 00 00 */	stw r0, 0(r6)
/* 8027ED8C  80 05 00 00 */	lwz r0, 0(r5)
/* 8027ED90  90 06 00 04 */	stw r0, 4(r6)
/* 8027ED94  80 85 00 00 */	lwz r4, 0(r5)
/* 8027ED98  90 C4 00 00 */	stw r6, 0(r4)
/* 8027ED9C  90 C5 00 00 */	stw r6, 0(r5)
/* 8027EDA0  48 00 00 18 */	b lbl_8027EDB8
lbl_8027EDA4:
/* 8027EDA4  90 C5 00 04 */	stw r6, 4(r5)
/* 8027EDA8  90 C5 00 00 */	stw r6, 0(r5)
/* 8027EDAC  38 00 00 00 */	li r0, 0
/* 8027EDB0  90 06 00 00 */	stw r0, 0(r6)
/* 8027EDB4  90 06 00 04 */	stw r0, 4(r6)
lbl_8027EDB8:
/* 8027EDB8  80 85 00 08 */	lwz r4, 8(r5)
/* 8027EDBC  38 04 00 01 */	addi r0, r4, 1
/* 8027EDC0  90 05 00 08 */	stw r0, 8(r5)
lbl_8027EDC4:
/* 8027EDC4  80 03 00 DC */	lwz r0, 0xdc(r3)
/* 8027EDC8  28 00 00 00 */	cmplwi r0, 0
/* 8027EDCC  40 82 FF 50 */	bne lbl_8027ED1C
/* 8027EDD0  4E 80 00 20 */	blr 
