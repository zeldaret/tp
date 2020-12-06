/* prepareCommand__9JKRDecompFPUcPUcUlUlPFUl_v __ct__9JKRDecompFl::prepareCommand(unsigned char *, unsigned char *, unsigned long, unsigned long, void (*)(unsigned long)) */
/* JKRDecomp_NS_prepareCommand */
/* 802DB858 002D8798  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802DB85C 002D879C  7C 08 02 A6 */	mflr r0
/* 802DB860 002D87A0  90 01 00 24 */	stw r0, 0x24(r1)
/* 802DB864 002D87A4  39 61 00 20 */	addi r11, r1, 0x20
/* 802DB868 002D87A8  48 08 69 6D */	bl _savegpr_27
/* 802DB86C 002D87AC  7C 7B 1B 78 */	mr r27, r3
/* 802DB870 002D87B0  7C 9C 23 78 */	mr r28, r4
/* 802DB874 002D87B4  7C BD 2B 78 */	mr r29, r5
/* 802DB878 002D87B8  7C DE 33 78 */	mr r30, r6
/* 802DB87C 002D87BC  7C FF 3B 78 */	mr r31, r7
/* 802DB880 002D87C0  38 60 00 4C */	li r3, 0x4c
/* 802DB884 002D87C4  80 8D 8D F0 */	lwz r4, lbl_80451370-_SDA_BASE_(r13)
/* 802DB888 002D87C8  38 A0 FF FC */	li r5, -4
/* 802DB88C 002D87CC  4B FF 34 0D */	bl __nw__FUlP7JKRHeapi
/* 802DB890 002D87D0  7C 64 1B 79 */	or. r4, r3, r3
/* 802DB894 002D87D4  41 82 00 0C */	beq lbl_802DB8A0
/* 802DB898 002D87D8  48 00 04 D9 */	bl __ct__16JKRDecompCommandFv
/* 802DB89C 002D87DC  7C 64 1B 78 */	mr r4, r3
lbl_802DB8A0:
/* 802DB8A0 002D87E0  93 64 00 04 */	stw r27, 4(r4)
/* 802DB8A4 002D87E4  93 84 00 08 */	stw r28, 8(r4)
/* 802DB8A8 002D87E8  93 A4 00 0C */	stw r29, 0xc(r4)
/* 802DB8AC 002D87EC  93 C4 00 10 */	stw r30, 0x10(r4)
/* 802DB8B0 002D87F0  93 E4 00 14 */	stw r31, 0x14(r4)
/* 802DB8B4 002D87F4  7C 83 23 78 */	mr r3, r4
/* 802DB8B8 002D87F8  39 61 00 20 */	addi r11, r1, 0x20
/* 802DB8BC 002D87FC  48 08 69 65 */	bl _restgpr_27
/* 802DB8C0 002D8800  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802DB8C4 002D8804  7C 08 03 A6 */	mtlr r0
/* 802DB8C8 002D8808  38 21 00 20 */	addi r1, r1, 0x20
/* 802DB8CC 002D880C  4E 80 00 20 */	blr
