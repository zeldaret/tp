lbl_8012E754:
/* 8012E754  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8012E758  7C 08 02 A6 */	mflr r0
/* 8012E75C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8012E760  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8012E764  93 C1 00 08 */	stw r30, 8(r1)
/* 8012E768  7C 7E 1B 78 */	mr r30, r3
/* 8012E76C  7C 9F 23 78 */	mr r31, r4
/* 8012E770  4B FE 74 B1 */	bl checkEventRun__9daAlink_cCFv
/* 8012E774  2C 03 00 00 */	cmpwi r3, 0
/* 8012E778  41 82 00 18 */	beq lbl_8012E790
/* 8012E77C  A0 1E 2F E8 */	lhz r0, 0x2fe8(r30)
/* 8012E780  28 00 00 FB */	cmplwi r0, 0xfb
/* 8012E784  40 82 00 0C */	bne lbl_8012E790
/* 8012E788  38 60 00 00 */	li r3, 0
/* 8012E78C  48 00 00 98 */	b lbl_8012E824
lbl_8012E790:
/* 8012E790  7F C3 F3 78 */	mr r3, r30
/* 8012E794  38 80 00 FB */	li r4, 0xfb
/* 8012E798  4B F9 37 D5 */	bl commonProcInit__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 8012E79C  2C 1F 00 00 */	cmpwi r31, 0
/* 8012E7A0  41 82 00 44 */	beq lbl_8012E7E4
/* 8012E7A4  7F C3 F3 78 */	mr r3, r30
/* 8012E7A8  38 80 00 5D */	li r4, 0x5d
/* 8012E7AC  3C A0 80 39 */	lis r5, m__20daAlinkHIO_wlHowl_c0@ha /* 0x8038F048@ha */
/* 8012E7B0  38 A5 F0 48 */	addi r5, r5, m__20daAlinkHIO_wlHowl_c0@l /* 0x8038F048@l */
/* 8012E7B4  38 A5 00 14 */	addi r5, r5, 0x14
/* 8012E7B8  4B FF B0 91 */	bl setSingleAnimeWolfParam__9daAlink_cFQ29daAlink_c12daAlink_WANMPC16daAlinkHIO_anm_c
/* 8012E7BC  80 1E 31 A0 */	lwz r0, 0x31a0(r30)
/* 8012E7C0  64 00 00 80 */	oris r0, r0, 0x80
/* 8012E7C4  90 1E 31 A0 */	stw r0, 0x31a0(r30)
/* 8012E7C8  3C 60 80 39 */	lis r3, m__20daAlinkHIO_wlHowl_c0@ha /* 0x8038F048@ha */
/* 8012E7CC  38 63 F0 48 */	addi r3, r3, m__20daAlinkHIO_wlHowl_c0@l /* 0x8038F048@l */
/* 8012E7D0  C0 03 00 24 */	lfs f0, 0x24(r3)
/* 8012E7D4  D0 1E 34 78 */	stfs f0, 0x3478(r30)
/* 8012E7D8  38 00 00 01 */	li r0, 1
/* 8012E7DC  B0 1E 30 0E */	sth r0, 0x300e(r30)
/* 8012E7E0  48 00 00 30 */	b lbl_8012E810
lbl_8012E7E4:
/* 8012E7E4  7F C3 F3 78 */	mr r3, r30
/* 8012E7E8  38 80 00 5C */	li r4, 0x5c
/* 8012E7EC  3C A0 80 39 */	lis r5, m__20daAlinkHIO_wlHowl_c0@ha /* 0x8038F048@ha */
/* 8012E7F0  38 A5 F0 48 */	addi r5, r5, m__20daAlinkHIO_wlHowl_c0@l /* 0x8038F048@l */
/* 8012E7F4  4B FF B0 55 */	bl setSingleAnimeWolfParam__9daAlink_cFQ29daAlink_c12daAlink_WANMPC16daAlinkHIO_anm_c
/* 8012E7F8  3C 60 80 39 */	lis r3, m__20daAlinkHIO_wlHowl_c0@ha /* 0x8038F048@ha */
/* 8012E7FC  38 63 F0 48 */	addi r3, r3, m__20daAlinkHIO_wlHowl_c0@l /* 0x8038F048@l */
/* 8012E800  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 8012E804  D0 1E 34 78 */	stfs f0, 0x3478(r30)
/* 8012E808  38 00 00 00 */	li r0, 0
/* 8012E80C  B0 1E 30 0E */	sth r0, 0x300e(r30)
lbl_8012E810:
/* 8012E810  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 8012E814  D0 1E 33 98 */	stfs f0, 0x3398(r30)
/* 8012E818  38 00 00 00 */	li r0, 0
/* 8012E81C  B0 1E 30 0C */	sth r0, 0x300c(r30)
/* 8012E820  38 60 00 01 */	li r3, 1
lbl_8012E824:
/* 8012E824  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8012E828  83 C1 00 08 */	lwz r30, 8(r1)
/* 8012E82C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8012E830  7C 08 03 A6 */	mtlr r0
/* 8012E834  38 21 00 10 */	addi r1, r1, 0x10
/* 8012E838  4E 80 00 20 */	blr 
