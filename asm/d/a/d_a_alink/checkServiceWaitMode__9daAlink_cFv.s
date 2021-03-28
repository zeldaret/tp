lbl_800B47B4:
/* 800B47B4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800B47B8  7C 08 02 A6 */	mflr r0
/* 800B47BC  90 01 00 24 */	stw r0, 0x24(r1)
/* 800B47C0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 800B47C4  7C 7F 1B 78 */	mr r31, r3
/* 800B47C8  48 06 14 59 */	bl checkEventRun__9daAlink_cCFv
/* 800B47CC  7C 60 00 34 */	cntlzw r0, r3
/* 800B47D0  54 03 D9 7E */	srwi r3, r0, 5
/* 800B47D4  54 00 DE 3F */	rlwinm. r0, r0, 0x1b, 0x18, 0x1f
/* 800B47D8  41 82 00 14 */	beq lbl_800B47EC
/* 800B47DC  80 1F 05 88 */	lwz r0, 0x588(r31)
/* 800B47E0  54 00 01 8C */	rlwinm r0, r0, 0, 6, 6
/* 800B47E4  7C 00 00 34 */	cntlzw r0, r0
/* 800B47E8  54 03 D9 7E */	srwi r3, r0, 5
lbl_800B47EC:
/* 800B47EC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800B47F0  41 82 00 18 */	beq lbl_800B4808
/* 800B47F4  7F E3 FB 78 */	mr r3, r31
/* 800B47F8  48 00 4A 5D */	bl checkNoUpperAnime__9daAlink_cCFv
/* 800B47FC  30 03 FF FF */	addic r0, r3, -1
/* 800B4800  7C 00 19 10 */	subfe r0, r0, r3
/* 800B4804  54 03 06 3E */	clrlwi r3, r0, 0x18
lbl_800B4808:
/* 800B4808  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800B480C  41 82 00 3C */	beq lbl_800B4848
/* 800B4810  C0 3F 35 C0 */	lfs f1, 0x35c0(r31)
/* 800B4814  C0 1F 35 B8 */	lfs f0, 0x35b8(r31)
/* 800B4818  D0 01 00 08 */	stfs f0, 8(r1)
/* 800B481C  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800B4820  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 800B4824  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 800B4828  38 61 00 08 */	addi r3, r1, 8
/* 800B482C  48 29 29 0D */	bl PSVECSquareMag
/* 800B4830  C0 02 92 B8 */	lfs f0, lit_6040(r2)
/* 800B4834  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800B4838  7C 00 00 26 */	mfcr r0
/* 800B483C  54 00 17 FE */	rlwinm r0, r0, 2, 0x1f, 0x1f
/* 800B4840  7C 00 00 34 */	cntlzw r0, r0
/* 800B4844  54 03 D9 7E */	srwi r3, r0, 5
lbl_800B4848:
/* 800B4848  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800B484C  41 82 00 10 */	beq lbl_800B485C
/* 800B4850  A8 1F 31 26 */	lha r0, 0x3126(r31)
/* 800B4854  7C 00 00 34 */	cntlzw r0, r0
/* 800B4858  54 03 D9 7E */	srwi r3, r0, 5
lbl_800B485C:
/* 800B485C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800B4860  41 82 00 10 */	beq lbl_800B4870
/* 800B4864  A8 1F 31 28 */	lha r0, 0x3128(r31)
/* 800B4868  7C 00 00 34 */	cntlzw r0, r0
/* 800B486C  54 03 D9 7E */	srwi r3, r0, 5
lbl_800B4870:
/* 800B4870  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800B4874  41 82 00 10 */	beq lbl_800B4884
/* 800B4878  A8 1F 31 24 */	lha r0, 0x3124(r31)
/* 800B487C  7C 00 00 34 */	cntlzw r0, r0
/* 800B4880  54 03 D9 7E */	srwi r3, r0, 5
lbl_800B4884:
/* 800B4884  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800B4888  41 82 00 14 */	beq lbl_800B489C
/* 800B488C  7F E3 FB 78 */	mr r3, r31
/* 800B4890  48 03 F4 C9 */	bl checkFishingRodAndLureItem__9daAlink_cCFv
/* 800B4894  7C 60 00 34 */	cntlzw r0, r3
/* 800B4898  54 03 D9 7E */	srwi r3, r0, 5
lbl_800B489C:
/* 800B489C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800B48A0  41 82 00 1C */	beq lbl_800B48BC
/* 800B48A4  C0 3F 2B A8 */	lfs f1, 0x2ba8(r31)
/* 800B48A8  C0 02 94 0C */	lfs f0, lit_14614(r2)
/* 800B48AC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800B48B0  4C 41 13 82 */	cror 2, 1, 2
/* 800B48B4  7C 00 00 26 */	mfcr r0
/* 800B48B8  54 03 1F FE */	rlwinm r3, r0, 3, 0x1f, 0x1f
lbl_800B48BC:
/* 800B48BC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 800B48C0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800B48C4  7C 08 03 A6 */	mtlr r0
/* 800B48C8  38 21 00 20 */	addi r1, r1, 0x20
/* 800B48CC  4E 80 00 20 */	blr 
