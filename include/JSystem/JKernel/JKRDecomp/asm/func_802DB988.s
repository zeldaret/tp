/* orderSync__9JKRDecompFPUcPUcUlUl __ct__9JKRDecompFl::orderSync(unsigned char *, unsigned char *, unsigned long, unsigned long) */
/* JKRDecomp_NS_orderSync */
/* 802DB988 002D88C8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802DB98C 002D88CC  7C 08 02 A6 */	mflr r0
/* 802DB990 002D88D0  90 01 00 14 */	stw r0, 0x14(r1)
/* 802DB994 002D88D4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802DB998 002D88D8  93 C1 00 08 */	stw r30, 8(r1)
/* 802DB99C 002D88DC  38 E0 00 00 */	li r7, 0
/* 802DB9A0 002D88E0  4B FF FF 61 */	bl orderAsync__9JKRDecompFPUcPUcUlUlPFUl_v
/* 802DB9A4 002D88E4  7C 7F 1B 78 */	mr r31, r3
/* 802DB9A8 002D88E8  38 80 00 00 */	li r4, 0
/* 802DB9AC 002D88EC  4B FF FF 89 */	bl sync__9JKRDecompFP16JKRDecompCommandi
/* 802DB9B0 002D88F0  7C 7E 1B 78 */	mr r30, r3
/* 802DB9B4 002D88F4  7F E3 FB 78 */	mr r3, r31
/* 802DB9B8 002D88F8  38 80 00 01 */	li r4, 1
/* 802DB9BC 002D88FC  48 00 04 05 */	bl __dt__16JKRDecompCommandFv
/* 802DB9C0 002D8900  7F C3 F3 78 */	mr r3, r30
/* 802DB9C4 002D8904  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802DB9C8 002D8908  83 C1 00 08 */	lwz r30, 8(r1)
/* 802DB9CC 002D890C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802DB9D0 002D8910  7C 08 03 A6 */	mtlr r0
/* 802DB9D4 002D8914  38 21 00 10 */	addi r1, r1, 0x10
/* 802DB9D8 002D8918  4E 80 00 20 */	blr
