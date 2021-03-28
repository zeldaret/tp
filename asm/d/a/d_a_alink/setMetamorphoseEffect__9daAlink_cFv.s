lbl_801247A8:
/* 801247A8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801247AC  7C 08 02 A6 */	mflr r0
/* 801247B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 801247B4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801247B8  7C 7F 1B 78 */	mr r31, r3
/* 801247BC  A8 03 30 0A */	lha r0, 0x300a(r3)
/* 801247C0  2C 00 00 00 */	cmpwi r0, 0
/* 801247C4  40 82 00 D0 */	bne lbl_80124894
/* 801247C8  A8 1F 30 12 */	lha r0, 0x3012(r31)
/* 801247CC  2C 00 00 00 */	cmpwi r0, 0
/* 801247D0  41 82 00 30 */	beq lbl_80124800
/* 801247D4  80 1F 05 74 */	lwz r0, 0x574(r31)
/* 801247D8  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 801247DC  41 82 00 0C */	beq lbl_801247E8
/* 801247E0  4B FF FF 59 */	bl setMetamorphoseEffectStartLink__9daAlink_cFv
/* 801247E4  48 00 00 B0 */	b lbl_80124894
lbl_801247E8:
/* 801247E8  38 9F 31 FC */	addi r4, r31, 0x31fc
/* 801247EC  38 A0 02 51 */	li r5, 0x251
/* 801247F0  38 DF 37 C8 */	addi r6, r31, 0x37c8
/* 801247F4  38 E0 00 00 */	li r7, 0
/* 801247F8  4B FF BD 89 */	bl setEmitter__9daAlink_cFPUlUsPC4cXyzPC5csXyz
/* 801247FC  48 00 00 98 */	b lbl_80124894
lbl_80124800:
/* 80124800  80 1F 05 74 */	lwz r0, 0x574(r31)
/* 80124804  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 80124808  41 82 00 64 */	beq lbl_8012486C
/* 8012480C  38 9F 31 F8 */	addi r4, r31, 0x31f8
/* 80124810  38 A0 02 52 */	li r5, 0x252
/* 80124814  38 DF 04 D0 */	addi r6, r31, 0x4d0
/* 80124818  38 E0 00 00 */	li r7, 0
/* 8012481C  4B FF BD 65 */	bl setEmitter__9daAlink_cFPUlUsPC4cXyzPC5csXyz
/* 80124820  7C 65 1B 79 */	or. r5, r3, r3
/* 80124824  80 7F 06 50 */	lwz r3, 0x650(r31)
/* 80124828  80 63 00 84 */	lwz r3, 0x84(r3)
/* 8012482C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80124830  C0 03 00 6C */	lfs f0, 0x6c(r3)
/* 80124834  D0 1F 37 C8 */	stfs f0, 0x37c8(r31)
/* 80124838  C0 03 00 7C */	lfs f0, 0x7c(r3)
/* 8012483C  D0 1F 37 CC */	stfs f0, 0x37cc(r31)
/* 80124840  C0 03 00 8C */	lfs f0, 0x8c(r3)
/* 80124844  D0 1F 37 D0 */	stfs f0, 0x37d0(r31)
/* 80124848  41 82 00 4C */	beq lbl_80124894
/* 8012484C  80 7F 06 50 */	lwz r3, 0x650(r31)
/* 80124850  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80124854  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80124858  38 63 00 60 */	addi r3, r3, 0x60
/* 8012485C  38 85 00 68 */	addi r4, r5, 0x68
/* 80124860  38 A5 00 A4 */	addi r5, r5, 0xa4
/* 80124864  48 15 BF 7D */	bl func_802807E0
/* 80124868  48 00 00 2C */	b lbl_80124894
lbl_8012486C:
/* 8012486C  80 9F 06 50 */	lwz r4, 0x650(r31)
/* 80124870  80 84 00 84 */	lwz r4, 0x84(r4)
/* 80124874  80 84 00 0C */	lwz r4, 0xc(r4)
/* 80124878  C0 04 00 6C */	lfs f0, 0x6c(r4)
/* 8012487C  D0 1F 37 C8 */	stfs f0, 0x37c8(r31)
/* 80124880  C0 04 00 7C */	lfs f0, 0x7c(r4)
/* 80124884  D0 1F 37 CC */	stfs f0, 0x37cc(r31)
/* 80124888  C0 04 00 8C */	lfs f0, 0x8c(r4)
/* 8012488C  D0 1F 37 D0 */	stfs f0, 0x37d0(r31)
/* 80124890  4B FF FE A9 */	bl setMetamorphoseEffectStartLink__9daAlink_cFv
lbl_80124894:
/* 80124894  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80124898  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8012489C  7C 08 03 A6 */	mtlr r0
/* 801248A0  38 21 00 10 */	addi r1, r1, 0x10
/* 801248A4  4E 80 00 20 */	blr 
