lbl_807C1958:
/* 807C1958  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807C195C  7C 08 02 A6 */	mflr r0
/* 807C1960  90 01 00 14 */	stw r0, 0x14(r1)
/* 807C1964  93 E1 00 0C */	stw r31, 0xc(r1)
/* 807C1968  93 C1 00 08 */	stw r30, 8(r1)
/* 807C196C  7C 7E 1B 79 */	or. r30, r3, r3
/* 807C1970  7C 9F 23 78 */	mr r31, r4
/* 807C1974  41 82 00 38 */	beq lbl_807C19AC
/* 807C1978  3C 60 80 7C */	lis r3, __vt__12dBgS_AcchCir@ha
/* 807C197C  38 03 22 FC */	addi r0, r3, __vt__12dBgS_AcchCir@l
/* 807C1980  90 1E 00 0C */	stw r0, 0xc(r30)
/* 807C1984  38 7E 00 14 */	addi r3, r30, 0x14
/* 807C1988  38 80 FF FF */	li r4, -1
/* 807C198C  4B AA D5 8C */	b __dt__8cM3dGCirFv
/* 807C1990  7F C3 F3 78 */	mr r3, r30
/* 807C1994  38 80 00 00 */	li r4, 0
/* 807C1998  4B AA 67 18 */	b __dt__13cBgS_PolyInfoFv
/* 807C199C  7F E0 07 35 */	extsh. r0, r31
/* 807C19A0  40 81 00 0C */	ble lbl_807C19AC
/* 807C19A4  7F C3 F3 78 */	mr r3, r30
/* 807C19A8  4B B0 D3 94 */	b __dl__FPv
lbl_807C19AC:
/* 807C19AC  7F C3 F3 78 */	mr r3, r30
/* 807C19B0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 807C19B4  83 C1 00 08 */	lwz r30, 8(r1)
/* 807C19B8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807C19BC  7C 08 03 A6 */	mtlr r0
/* 807C19C0  38 21 00 10 */	addi r1, r1, 0x10
/* 807C19C4  4E 80 00 20 */	blr 
