lbl_800A3D0C:
/* 800A3D0C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800A3D10  7C 08 02 A6 */	mflr r0
/* 800A3D14  90 01 00 24 */	stw r0, 0x24(r1)
/* 800A3D18  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 800A3D1C  7C 9F 23 78 */	mr r31, r4
/* 800A3D20  B0 A1 00 08 */	sth r5, 8(r1)
/* 800A3D24  90 C4 00 08 */	stw r6, 8(r4)
/* 800A3D28  3C 80 00 01 */	lis r4, 0x0001 /* 0x0000FFFF@ha */
/* 800A3D2C  38 04 FF FF */	addi r0, r4, 0xFFFF /* 0x0000FFFF@l */
/* 800A3D30  B0 01 00 0A */	sth r0, 0xa(r1)
/* 800A3D34  38 81 00 0A */	addi r4, r1, 0xa
/* 800A3D38  38 A1 00 08 */	addi r5, r1, 8
/* 800A3D3C  4B FF FF A9 */	bl setIdxMask__9daAlink_cFPUsPUs
/* 800A3D40  A0 A1 00 0A */	lhz r5, 0xa(r1)
/* 800A3D44  28 05 FF FF */	cmplwi r5, 0xffff
/* 800A3D48  40 82 00 14 */	bne lbl_800A3D5C
/* 800A3D4C  7F E3 FB 78 */	mr r3, r31
/* 800A3D50  A0 81 00 08 */	lhz r4, 8(r1)
/* 800A3D54  48 0B B3 15 */	bl loadDataIdx__14daPy_anmHeap_cFUs
/* 800A3D58  48 00 00 10 */	b lbl_800A3D68
lbl_800A3D5C:
/* 800A3D5C  7F E3 FB 78 */	mr r3, r31
/* 800A3D60  A0 81 00 08 */	lhz r4, 8(r1)
/* 800A3D64  48 0B B3 B5 */	bl loadDataDemoRID__14daPy_anmHeap_cFUsUs
lbl_800A3D68:
/* 800A3D68  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 800A3D6C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800A3D70  7C 08 03 A6 */	mtlr r0
/* 800A3D74  38 21 00 20 */	addi r1, r1, 0x20
/* 800A3D78  4E 80 00 20 */	blr 
