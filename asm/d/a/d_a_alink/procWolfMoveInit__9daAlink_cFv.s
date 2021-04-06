lbl_8012D380:
/* 8012D380  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8012D384  7C 08 02 A6 */	mflr r0
/* 8012D388  90 01 00 14 */	stw r0, 0x14(r1)
/* 8012D38C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8012D390  7C 7F 1B 78 */	mr r31, r3
/* 8012D394  38 80 00 F2 */	li r4, 0xf2
/* 8012D398  4B F9 5A 0D */	bl commonProcInitNotSameProc__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 8012D39C  2C 03 00 00 */	cmpwi r3, 0
/* 8012D3A0  40 82 00 0C */	bne lbl_8012D3AC
/* 8012D3A4  38 60 00 00 */	li r3, 0
/* 8012D3A8  48 00 00 28 */	b lbl_8012D3D0
lbl_8012D3AC:
/* 8012D3AC  7F E3 FB 78 */	mr r3, r31
/* 8012D3B0  3C 80 80 39 */	lis r4, m__20daAlinkHIO_wlMove_c0@ha /* 0x8038EE28@ha */
/* 8012D3B4  38 84 EE 28 */	addi r4, r4, m__20daAlinkHIO_wlMove_c0@l /* 0x8038EE28@l */
/* 8012D3B8  C0 24 00 94 */	lfs f1, 0x94(r4)
/* 8012D3BC  4B FF B4 89 */	bl setBlendWolfMoveAnime__9daAlink_cFf
/* 8012D3C0  7F E3 FB 78 */	mr r3, r31
/* 8012D3C4  38 80 00 03 */	li r4, 3
/* 8012D3C8  4B FF 3D F9 */	bl setFootEffectProcType__9daAlink_cFi
/* 8012D3CC  38 60 00 01 */	li r3, 1
lbl_8012D3D0:
/* 8012D3D0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8012D3D4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8012D3D8  7C 08 03 A6 */	mtlr r0
/* 8012D3DC  38 21 00 10 */	addi r1, r1, 0x10
/* 8012D3E0  4E 80 00 20 */	blr 
