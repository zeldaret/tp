lbl_802881A4:
/* 802881A4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802881A8  7C 08 02 A6 */	mflr r0
/* 802881AC  90 01 00 14 */	stw r0, 0x14(r1)
/* 802881B0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802881B4  93 C1 00 08 */	stw r30, 8(r1)
/* 802881B8  7C 7E 1B 79 */	or. r30, r3, r3
/* 802881BC  7C 9F 23 78 */	mr r31, r4
/* 802881C0  41 82 00 28 */	beq lbl_802881E8
/* 802881C4  3C 80 80 3C */	lis r4, __vt__Q27JStudio13TObject_actor@ha /* 0x803C5580@ha */
/* 802881C8  38 04 55 80 */	addi r0, r4, __vt__Q27JStudio13TObject_actor@l /* 0x803C5580@l */
/* 802881CC  90 1E 00 08 */	stw r0, 8(r30)
/* 802881D0  38 80 00 00 */	li r4, 0
/* 802881D4  4B FF E4 DD */	bl __dt__Q27JStudio7TObjectFv
/* 802881D8  7F E0 07 35 */	extsh. r0, r31
/* 802881DC  40 81 00 0C */	ble lbl_802881E8
/* 802881E0  7F C3 F3 78 */	mr r3, r30
/* 802881E4  48 04 6B 59 */	bl __dl__FPv
lbl_802881E8:
/* 802881E8  7F C3 F3 78 */	mr r3, r30
/* 802881EC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802881F0  83 C1 00 08 */	lwz r30, 8(r1)
/* 802881F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802881F8  7C 08 03 A6 */	mtlr r0
/* 802881FC  38 21 00 10 */	addi r1, r1, 0x10
/* 80288200  4E 80 00 20 */	blr 
