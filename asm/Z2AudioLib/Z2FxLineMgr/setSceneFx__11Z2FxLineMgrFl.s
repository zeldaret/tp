lbl_802BAEB8:
/* 802BAEB8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802BAEBC  7C 08 02 A6 */	mflr r0
/* 802BAEC0  90 01 00 14 */	stw r0, 0x14(r1)
/* 802BAEC4  80 AD 86 00 */	lwz r5, data_80450B80(r13)
/* 802BAEC8  88 05 00 1E */	lbz r0, 0x1e(r5)
/* 802BAECC  28 00 00 00 */	cmplwi r0, 0
/* 802BAED0  41 82 00 18 */	beq lbl_802BAEE8
/* 802BAED4  38 80 00 0B */	li r4, 0xb
/* 802BAED8  38 A0 00 01 */	li r5, 1
/* 802BAEDC  38 C0 00 00 */	li r6, 0
/* 802BAEE0  4B FF FD 49 */	bl setLineID__11Z2FxLineMgrFScbb
/* 802BAEE4  48 00 01 18 */	b lbl_802BAFFC
lbl_802BAEE8:
/* 802BAEE8  38 04 FF FB */	addi r0, r4, -5
/* 802BAEEC  28 00 00 4B */	cmplwi r0, 0x4b
/* 802BAEF0  41 81 00 FC */	bgt lbl_802BAFEC
/* 802BAEF4  3C 80 80 3D */	lis r4, lit_3566@ha /* 0x803CAB18@ha */
/* 802BAEF8  38 84 AB 18 */	addi r4, r4, lit_3566@l /* 0x803CAB18@l */
/* 802BAEFC  54 00 10 3A */	slwi r0, r0, 2
/* 802BAF00  7C 04 00 2E */	lwzx r0, r4, r0
/* 802BAF04  7C 09 03 A6 */	mtctr r0
/* 802BAF08  4E 80 04 20 */	bctr 
/* 802BAF0C  38 80 00 09 */	li r4, 9
/* 802BAF10  38 A0 00 01 */	li r5, 1
/* 802BAF14  38 C0 00 00 */	li r6, 0
/* 802BAF18  4B FF FD 11 */	bl setLineID__11Z2FxLineMgrFScbb
/* 802BAF1C  48 00 00 E0 */	b lbl_802BAFFC
/* 802BAF20  38 80 00 0A */	li r4, 0xa
/* 802BAF24  38 A0 00 01 */	li r5, 1
/* 802BAF28  38 C0 00 00 */	li r6, 0
/* 802BAF2C  4B FF FC FD */	bl setLineID__11Z2FxLineMgrFScbb
/* 802BAF30  48 00 00 CC */	b lbl_802BAFFC
/* 802BAF34  88 05 00 0C */	lbz r0, 0xc(r5)
/* 802BAF38  2C 00 00 02 */	cmpwi r0, 2
/* 802BAF3C  41 82 00 C0 */	beq lbl_802BAFFC
/* 802BAF40  38 80 00 01 */	li r4, 1
/* 802BAF44  38 A0 00 01 */	li r5, 1
/* 802BAF48  38 C0 00 00 */	li r6, 0
/* 802BAF4C  4B FF FC DD */	bl setLineID__11Z2FxLineMgrFScbb
/* 802BAF50  48 00 00 AC */	b lbl_802BAFFC
/* 802BAF54  38 80 00 02 */	li r4, 2
/* 802BAF58  38 A0 00 01 */	li r5, 1
/* 802BAF5C  38 C0 00 00 */	li r6, 0
/* 802BAF60  4B FF FC C9 */	bl setLineID__11Z2FxLineMgrFScbb
/* 802BAF64  48 00 00 98 */	b lbl_802BAFFC
/* 802BAF68  88 05 00 0C */	lbz r0, 0xc(r5)
/* 802BAF6C  2C 00 00 01 */	cmpwi r0, 1
/* 802BAF70  40 82 00 8C */	bne lbl_802BAFFC
/* 802BAF74  38 80 00 03 */	li r4, 3
/* 802BAF78  38 A0 00 01 */	li r5, 1
/* 802BAF7C  38 C0 00 00 */	li r6, 0
/* 802BAF80  4B FF FC A9 */	bl setLineID__11Z2FxLineMgrFScbb
/* 802BAF84  48 00 00 78 */	b lbl_802BAFFC
/* 802BAF88  38 80 00 04 */	li r4, 4
/* 802BAF8C  38 A0 00 01 */	li r5, 1
/* 802BAF90  38 C0 00 00 */	li r6, 0
/* 802BAF94  4B FF FC 95 */	bl setLineID__11Z2FxLineMgrFScbb
/* 802BAF98  48 00 00 64 */	b lbl_802BAFFC
/* 802BAF9C  38 80 00 05 */	li r4, 5
/* 802BAFA0  38 A0 00 01 */	li r5, 1
/* 802BAFA4  38 C0 00 00 */	li r6, 0
/* 802BAFA8  4B FF FC 81 */	bl setLineID__11Z2FxLineMgrFScbb
/* 802BAFAC  48 00 00 50 */	b lbl_802BAFFC
/* 802BAFB0  38 80 00 06 */	li r4, 6
/* 802BAFB4  38 A0 00 01 */	li r5, 1
/* 802BAFB8  38 C0 00 00 */	li r6, 0
/* 802BAFBC  4B FF FC 6D */	bl setLineID__11Z2FxLineMgrFScbb
/* 802BAFC0  48 00 00 3C */	b lbl_802BAFFC
/* 802BAFC4  38 80 00 07 */	li r4, 7
/* 802BAFC8  38 A0 00 01 */	li r5, 1
/* 802BAFCC  38 C0 00 00 */	li r6, 0
/* 802BAFD0  4B FF FC 59 */	bl setLineID__11Z2FxLineMgrFScbb
/* 802BAFD4  48 00 00 28 */	b lbl_802BAFFC
/* 802BAFD8  38 80 00 08 */	li r4, 8
/* 802BAFDC  38 A0 00 01 */	li r5, 1
/* 802BAFE0  38 C0 00 00 */	li r6, 0
/* 802BAFE4  4B FF FC 45 */	bl setLineID__11Z2FxLineMgrFScbb
/* 802BAFE8  48 00 00 14 */	b lbl_802BAFFC
lbl_802BAFEC:
/* 802BAFEC  38 80 FF FF */	li r4, -1
/* 802BAFF0  38 A0 00 01 */	li r5, 1
/* 802BAFF4  38 C0 00 00 */	li r6, 0
/* 802BAFF8  4B FF FC 31 */	bl setLineID__11Z2FxLineMgrFScbb
lbl_802BAFFC:
/* 802BAFFC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802BB000  7C 08 03 A6 */	mtlr r0
/* 802BB004  38 21 00 10 */	addi r1, r1, 0x10
/* 802BB008  4E 80 00 20 */	blr 
