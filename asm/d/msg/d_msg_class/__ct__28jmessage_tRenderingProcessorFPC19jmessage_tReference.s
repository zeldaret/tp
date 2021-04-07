lbl_8022CCB0:
/* 8022CCB0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8022CCB4  7C 08 02 A6 */	mflr r0
/* 8022CCB8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8022CCBC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8022CCC0  7C 7F 1B 78 */	mr r31, r3
/* 8022CCC4  48 07 BD C1 */	bl __ct__Q28JMessage19TRenderingProcessorFPCQ28JMessage10TReference
/* 8022CCC8  3C 60 80 3C */	lis r3, __vt__28jmessage_tRenderingProcessor@ha /* 0x803C09FC@ha */
/* 8022CCCC  38 03 09 FC */	addi r0, r3, __vt__28jmessage_tRenderingProcessor@l /* 0x803C09FC@l */
/* 8022CCD0  90 1F 00 00 */	stw r0, 0(r31)
/* 8022CCD4  38 60 00 00 */	li r3, 0
/* 8022CCD8  90 7F 00 38 */	stw r3, 0x38(r31)
/* 8022CCDC  90 7F 00 3C */	stw r3, 0x3c(r31)
/* 8022CCE0  90 7F 00 40 */	stw r3, 0x40(r31)
/* 8022CCE4  C0 22 B0 60 */	lfs f1, lit_4027(r2)
/* 8022CCE8  D0 3F 00 44 */	stfs f1, 0x44(r31)
/* 8022CCEC  D0 3F 00 4C */	stfs f1, 0x4c(r31)
/* 8022CCF0  D0 3F 00 48 */	stfs f1, 0x48(r31)
/* 8022CCF4  D0 3F 00 54 */	stfs f1, 0x54(r31)
/* 8022CCF8  D0 3F 00 50 */	stfs f1, 0x50(r31)
/* 8022CCFC  C0 02 B0 64 */	lfs f0, lit_4028(r2)
/* 8022CD00  D0 1F 00 5C */	stfs f0, 0x5c(r31)
/* 8022CD04  D0 1F 00 58 */	stfs f0, 0x58(r31)
/* 8022CD08  38 00 00 03 */	li r0, 3
/* 8022CD0C  7C 09 03 A6 */	mtctr r0
lbl_8022CD10:
/* 8022CD10  7C 9F 1A 14 */	add r4, r31, r3
/* 8022CD14  D0 24 00 6C */	stfs f1, 0x6c(r4)
/* 8022CD18  D0 24 00 60 */	stfs f1, 0x60(r4)
/* 8022CD1C  38 63 00 04 */	addi r3, r3, 4
/* 8022CD20  42 00 FF F0 */	bdnz lbl_8022CD10
/* 8022CD24  38 60 00 00 */	li r3, 0
/* 8022CD28  90 7F 01 1C */	stw r3, 0x11c(r31)
/* 8022CD2C  C0 02 B0 60 */	lfs f0, lit_4027(r2)
/* 8022CD30  D0 1F 01 28 */	stfs f0, 0x128(r31)
/* 8022CD34  D0 1F 01 2C */	stfs f0, 0x12c(r31)
/* 8022CD38  D0 1F 01 30 */	stfs f0, 0x130(r31)
/* 8022CD3C  D0 1F 01 34 */	stfs f0, 0x134(r31)
/* 8022CD40  98 7F 01 4C */	stb r3, 0x14c(r31)
/* 8022CD44  B0 7F 01 40 */	sth r3, 0x140(r31)
/* 8022CD48  B0 7F 01 42 */	sth r3, 0x142(r31)
/* 8022CD4C  B0 7F 01 44 */	sth r3, 0x144(r31)
/* 8022CD50  B0 7F 01 46 */	sth r3, 0x146(r31)
/* 8022CD54  B0 7F 01 48 */	sth r3, 0x148(r31)
/* 8022CD58  B0 7F 01 4A */	sth r3, 0x14a(r31)
/* 8022CD5C  B0 7F 01 3C */	sth r3, 0x13c(r31)
/* 8022CD60  B0 7F 01 3E */	sth r3, 0x13e(r31)
/* 8022CD64  98 7F 01 86 */	stb r3, 0x186(r31)
/* 8022CD68  98 7F 01 85 */	stb r3, 0x185(r31)
/* 8022CD6C  98 7F 01 84 */	stb r3, 0x184(r31)
/* 8022CD70  98 7F 01 4D */	stb r3, 0x14d(r31)
/* 8022CD74  98 7F 01 4E */	stb r3, 0x14e(r31)
/* 8022CD78  38 00 FF FF */	li r0, -1
/* 8022CD7C  90 1F 01 20 */	stw r0, 0x120(r31)
/* 8022CD80  90 1F 01 24 */	stw r0, 0x124(r31)
/* 8022CD84  98 7F 01 4F */	stb r3, 0x14f(r31)
/* 8022CD88  98 7F 01 50 */	stb r3, 0x150(r31)
/* 8022CD8C  98 7F 01 51 */	stb r3, 0x151(r31)
/* 8022CD90  D0 1F 01 38 */	stfs f0, 0x138(r31)
/* 8022CD94  38 60 00 00 */	li r3, 0
/* 8022CD98  38 00 00 28 */	li r0, 0x28
/* 8022CD9C  7C 09 03 A6 */	mtctr r0
lbl_8022CDA0:
/* 8022CDA0  38 03 00 7C */	addi r0, r3, 0x7c
/* 8022CDA4  7C 1F 05 2E */	stfsx f0, r31, r0
/* 8022CDA8  38 63 00 04 */	addi r3, r3, 4
/* 8022CDAC  42 00 FF F4 */	bdnz lbl_8022CDA0
/* 8022CDB0  7F E3 FB 78 */	mr r3, r31
/* 8022CDB4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8022CDB8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8022CDBC  7C 08 03 A6 */	mtlr r0
/* 8022CDC0  38 21 00 10 */	addi r1, r1, 0x10
/* 8022CDC4  4E 80 00 20 */	blr 
