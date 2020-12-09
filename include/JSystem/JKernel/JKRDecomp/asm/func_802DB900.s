/* orderAsync__9JKRDecompFPUcPUcUlUlPFUl_v __ct__9JKRDecompFl::orderAsync(unsigned char *, unsigned char *, unsigned long, unsigned long, void (*)(unsigned long)) */
/* JKRDecomp_NS_orderAsync */
/* 802DB900 002D8840  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802DB904 002D8844  7C 08 02 A6 */	mflr r0
/* 802DB908 002D8848  90 01 00 14 */	stw r0, 0x14(r1)
/* 802DB90C 002D884C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802DB910 002D8850  4B FF FF 49 */	bl prepareCommand__9JKRDecompFPUcPUcUlUlPFUl_v
/* 802DB914 002D8854  7C 7F 1B 78 */	mr r31, r3
/* 802DB918 002D8858  4B FF FF B9 */	bl sendCommand__9JKRDecompFP16JKRDecompCommand
/* 802DB91C 002D885C  7F E3 FB 78 */	mr r3, r31
/* 802DB920 002D8860  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802DB924 002D8864  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802DB928 002D8868  7C 08 03 A6 */	mtlr r0
/* 802DB92C 002D886C  38 21 00 10 */	addi r1, r1, 0x10
/* 802DB930 002D8870  4E 80 00 20 */	blr
