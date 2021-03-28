lbl_80135160:
/* 80135160  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80135164  7C 08 02 A6 */	mflr r0
/* 80135168  90 01 00 14 */	stw r0, 0x14(r1)
/* 8013516C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80135170  7C 7F 1B 78 */	mr r31, r3
/* 80135174  38 80 01 37 */	li r4, 0x137
/* 80135178  4B F8 DC 2D */	bl commonProcInitNotSameProc__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 8013517C  2C 03 00 00 */	cmpwi r3, 0
/* 80135180  40 82 00 0C */	bne lbl_8013518C
/* 80135184  38 60 00 00 */	li r3, 0
/* 80135188  48 00 00 5C */	b lbl_801351E4
lbl_8013518C:
/* 8013518C  7F E3 FB 78 */	mr r3, r31
/* 80135190  3C 80 80 39 */	lis r4, m__20daAlinkHIO_wlMove_c0@ha
/* 80135194  38 84 EE 28 */	addi r4, r4, m__20daAlinkHIO_wlMove_c0@l
/* 80135198  C0 24 00 BC */	lfs f1, 0xbc(r4)
/* 8013519C  4B FF 36 A9 */	bl setBlendWolfMoveAnime__9daAlink_cFf
/* 801351A0  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 801351A4  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 801351A8  38 00 00 04 */	li r0, 4
/* 801351AC  98 1F 2F 98 */	stb r0, 0x2f98(r31)
/* 801351B0  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 801351B4  B0 1F 30 0C */	sth r0, 0x300c(r31)
/* 801351B8  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 801351BC  D0 1F 34 78 */	stfs f0, 0x3478(r31)
/* 801351C0  3C 60 80 39 */	lis r3, m__23daAlinkHIO_wlMoveNoP_c0@ha
/* 801351C4  38 63 EF 28 */	addi r3, r3, m__23daAlinkHIO_wlMoveNoP_c0@l
/* 801351C8  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 801351CC  D0 1F 34 7C */	stfs f0, 0x347c(r31)
/* 801351D0  C0 03 00 08 */	lfs f0, 8(r3)
/* 801351D4  D0 1F 05 94 */	stfs f0, 0x594(r31)
/* 801351D8  7F E3 FB 78 */	mr r3, r31
/* 801351DC  4B FF 2A D1 */	bl offWolfEyeUp__9daAlink_cFv
/* 801351E0  38 60 00 01 */	li r3, 1
lbl_801351E4:
/* 801351E4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801351E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801351EC  7C 08 03 A6 */	mtlr r0
/* 801351F0  38 21 00 10 */	addi r1, r1, 0x10
/* 801351F4  4E 80 00 20 */	blr 
