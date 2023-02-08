lbl_8028D550:
/* 8028D550  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8028D554  7C 08 02 A6 */	mflr r0
/* 8028D558  90 01 00 14 */	stw r0, 0x14(r1)
/* 8028D55C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8028D560  93 C1 00 08 */	stw r30, 8(r1)
/* 8028D564  7C 7E 1B 79 */	or. r30, r3, r3
/* 8028D568  7C 9F 23 78 */	mr r31, r4
/* 8028D56C  41 82 00 28 */	beq lbl_8028D594
/* 8028D570  3C 80 80 3C */	lis r4, __vt__Q215JStudio_JAudio213TCreateObject@ha /* 0x803C5A68@ha */
/* 8028D574  38 04 5A 68 */	addi r0, r4, __vt__Q215JStudio_JAudio213TCreateObject@l /* 0x803C5A68@l */
/* 8028D578  90 1E 00 00 */	stw r0, 0(r30)
/* 8028D57C  38 80 00 00 */	li r4, 0
/* 8028D580  4B FF 7F 09 */	bl __dt__Q27JStudio13TCreateObjectFv
/* 8028D584  7F E0 07 35 */	extsh. r0, r31
/* 8028D588  40 81 00 0C */	ble lbl_8028D594
/* 8028D58C  7F C3 F3 78 */	mr r3, r30
/* 8028D590  48 04 17 AD */	bl __dl__FPv
lbl_8028D594:
/* 8028D594  7F C3 F3 78 */	mr r3, r30
/* 8028D598  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8028D59C  83 C1 00 08 */	lwz r30, 8(r1)
/* 8028D5A0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8028D5A4  7C 08 03 A6 */	mtlr r0
/* 8028D5A8  38 21 00 10 */	addi r1, r1, 0x10
/* 8028D5AC  4E 80 00 20 */	blr 
