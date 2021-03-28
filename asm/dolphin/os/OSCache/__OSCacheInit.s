lbl_8033BAF0:
/* 8033BAF0  7C 08 02 A6 */	mflr r0
/* 8033BAF4  90 01 00 04 */	stw r0, 4(r1)
/* 8033BAF8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8033BAFC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8033BB00  93 C1 00 08 */	stw r30, 8(r1)
/* 8033BB04  3C 60 80 3D */	lis r3, lit_63@ha
/* 8033BB08  3B E3 F5 10 */	addi r31, r3, lit_63@l
/* 8033BB0C  4B FF E1 C5 */	bl PPCMfhid0
/* 8033BB10  54 60 04 20 */	rlwinm r0, r3, 0, 0x10, 0x10
/* 8033BB14  28 00 00 00 */	cmplwi r0, 0
/* 8033BB18  40 82 00 14 */	bne lbl_8033BB2C
/* 8033BB1C  4B FF FB B9 */	bl ICEnable
/* 8033BB20  38 7F 01 AC */	addi r3, r31, 0x1ac
/* 8033BB24  4C C6 31 82 */	crclr 6
/* 8033BB28  48 00 A9 0D */	bl DBPrintf
lbl_8033BB2C:
/* 8033BB2C  4B FF E1 A5 */	bl PPCMfhid0
/* 8033BB30  54 60 04 62 */	rlwinm r0, r3, 0, 0x11, 0x11
/* 8033BB34  28 00 00 00 */	cmplwi r0, 0
/* 8033BB38  40 82 00 14 */	bne lbl_8033BB4C
/* 8033BB3C  4B FF FA 31 */	bl DCEnable
/* 8033BB40  38 7F 01 C8 */	addi r3, r31, 0x1c8
/* 8033BB44  4C C6 31 82 */	crclr 6
/* 8033BB48  48 00 A8 ED */	bl DBPrintf
lbl_8033BB4C:
/* 8033BB4C  4B FF E1 95 */	bl PPCMfl2cr
/* 8033BB50  54 60 00 00 */	rlwinm r0, r3, 0, 0, 0
/* 8033BB54  28 00 00 00 */	cmplwi r0, 0
/* 8033BB58  40 82 00 58 */	bne lbl_8033BBB0
/* 8033BB5C  4B FF E1 65 */	bl PPCMfmsr
/* 8033BB60  7C 7E 1B 78 */	mr r30, r3
/* 8033BB64  7C 00 04 AC */	sync
/* 8033BB68  38 60 00 30 */	li r3, 0x30
/* 8033BB6C  4B FF E1 5D */	bl PPCMtmsr
/* 8033BB70  7C 00 04 AC */	sync
/* 8033BB74  7C 00 04 AC */	sync
/* 8033BB78  4B FF E1 69 */	bl PPCMfl2cr
/* 8033BB7C  54 63 00 7E */	clrlwi r3, r3, 1
/* 8033BB80  4B FF E1 69 */	bl PPCMtl2cr
/* 8033BB84  7C 00 04 AC */	sync
/* 8033BB88  4B FF FD 71 */	bl L2GlobalInvalidate
/* 8033BB8C  7F C3 F3 78 */	mr r3, r30
/* 8033BB90  4B FF E1 39 */	bl PPCMtmsr
/* 8033BB94  4B FF E1 4D */	bl PPCMfl2cr
/* 8033BB98  64 60 80 00 */	oris r0, r3, 0x8000
/* 8033BB9C  54 03 02 D2 */	rlwinm r3, r0, 0, 0xb, 9
/* 8033BBA0  4B FF E1 49 */	bl PPCMtl2cr
/* 8033BBA4  38 7F 01 E4 */	addi r3, r31, 0x1e4
/* 8033BBA8  4C C6 31 82 */	crclr 6
/* 8033BBAC  48 00 A8 89 */	bl DBPrintf
lbl_8033BBB0:
/* 8033BBB0  3C 60 80 34 */	lis r3, DMAErrorHandler@ha
/* 8033BBB4  38 83 B9 90 */	addi r4, r3, DMAErrorHandler@l
/* 8033BBB8  38 60 00 01 */	li r3, 1
/* 8033BBBC  48 00 09 C5 */	bl OSSetErrorHandler
/* 8033BBC0  38 7F 01 FC */	addi r3, r31, 0x1fc
/* 8033BBC4  4C C6 31 82 */	crclr 6
/* 8033BBC8  48 00 A8 6D */	bl DBPrintf
/* 8033BBCC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8033BBD0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8033BBD4  83 C1 00 08 */	lwz r30, 8(r1)
/* 8033BBD8  38 21 00 10 */	addi r1, r1, 0x10
/* 8033BBDC  7C 08 03 A6 */	mtlr r0
/* 8033BBE0  4E 80 00 20 */	blr 
