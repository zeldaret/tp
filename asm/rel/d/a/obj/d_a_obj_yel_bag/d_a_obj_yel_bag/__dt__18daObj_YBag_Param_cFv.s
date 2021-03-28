lbl_80D3DC20:
/* 80D3DC20  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D3DC24  7C 08 02 A6 */	mflr r0
/* 80D3DC28  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D3DC2C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D3DC30  7C 7F 1B 79 */	or. r31, r3, r3
/* 80D3DC34  41 82 00 1C */	beq lbl_80D3DC50
/* 80D3DC38  3C A0 80 D4 */	lis r5, __vt__18daObj_YBag_Param_c@ha
/* 80D3DC3C  38 05 DE BC */	addi r0, r5, __vt__18daObj_YBag_Param_c@l
/* 80D3DC40  90 1F 00 00 */	stw r0, 0(r31)
/* 80D3DC44  7C 80 07 35 */	extsh. r0, r4
/* 80D3DC48  40 81 00 08 */	ble lbl_80D3DC50
/* 80D3DC4C  4B 59 10 F0 */	b __dl__FPv
lbl_80D3DC50:
/* 80D3DC50  7F E3 FB 78 */	mr r3, r31
/* 80D3DC54  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D3DC58  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D3DC5C  7C 08 03 A6 */	mtlr r0
/* 80D3DC60  38 21 00 10 */	addi r1, r1, 0x10
/* 80D3DC64  4E 80 00 20 */	blr 
