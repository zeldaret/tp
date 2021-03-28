lbl_802C8730:
/* 802C8730  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802C8734  98 83 01 E0 */	stb r4, 0x1e0(r3)
/* 802C8738  54 A0 06 3E */	clrlwi r0, r5, 0x18
/* 802C873C  28 00 00 64 */	cmplwi r0, 0x64
/* 802C8740  41 80 00 10 */	blt lbl_802C8750
/* 802C8744  C0 02 C3 44 */	lfs f0, lit_3502(r2)
/* 802C8748  D0 03 01 E4 */	stfs f0, 0x1e4(r3)
/* 802C874C  48 00 00 28 */	b lbl_802C8774
lbl_802C8750:
/* 802C8750  C0 42 C3 78 */	lfs f2, lit_3749(r2)
/* 802C8754  C8 22 C3 58 */	lfd f1, lit_3508(r2)
/* 802C8758  90 01 00 0C */	stw r0, 0xc(r1)
/* 802C875C  3C 00 43 30 */	lis r0, 0x4330
/* 802C8760  90 01 00 08 */	stw r0, 8(r1)
/* 802C8764  C8 01 00 08 */	lfd f0, 8(r1)
/* 802C8768  EC 00 08 28 */	fsubs f0, f0, f1
/* 802C876C  EC 02 00 32 */	fmuls f0, f2, f0
/* 802C8770  D0 03 01 E4 */	stfs f0, 0x1e4(r3)
lbl_802C8774:
/* 802C8774  54 C0 06 3E */	clrlwi r0, r6, 0x18
/* 802C8778  28 00 00 FF */	cmplwi r0, 0xff
/* 802C877C  40 82 00 10 */	bne lbl_802C878C
/* 802C8780  C0 02 C3 44 */	lfs f0, lit_3502(r2)
/* 802C8784  D0 03 01 E8 */	stfs f0, 0x1e8(r3)
/* 802C8788  48 00 00 28 */	b lbl_802C87B0
lbl_802C878C:
/* 802C878C  C0 42 C3 78 */	lfs f2, lit_3749(r2)
/* 802C8790  C8 22 C3 58 */	lfd f1, lit_3508(r2)
/* 802C8794  90 01 00 0C */	stw r0, 0xc(r1)
/* 802C8798  3C 00 43 30 */	lis r0, 0x4330
/* 802C879C  90 01 00 08 */	stw r0, 8(r1)
/* 802C87A0  C8 01 00 08 */	lfd f0, 8(r1)
/* 802C87A4  EC 00 08 28 */	fsubs f0, f0, f1
/* 802C87A8  EC 02 00 32 */	fmuls f0, f2, f0
/* 802C87AC  D0 03 01 E8 */	stfs f0, 0x1e8(r3)
lbl_802C87B0:
/* 802C87B0  54 E0 06 3E */	clrlwi r0, r7, 0x18
/* 802C87B4  28 00 00 FF */	cmplwi r0, 0xff
/* 802C87B8  40 82 00 10 */	bne lbl_802C87C8
/* 802C87BC  C0 02 C3 44 */	lfs f0, lit_3502(r2)
/* 802C87C0  D0 03 01 EC */	stfs f0, 0x1ec(r3)
/* 802C87C4  48 00 00 28 */	b lbl_802C87EC
lbl_802C87C8:
/* 802C87C8  C0 42 C3 50 */	lfs f2, lit_3505(r2)
/* 802C87CC  C8 22 C3 58 */	lfd f1, lit_3508(r2)
/* 802C87D0  90 01 00 0C */	stw r0, 0xc(r1)
/* 802C87D4  3C 00 43 30 */	lis r0, 0x4330
/* 802C87D8  90 01 00 08 */	stw r0, 8(r1)
/* 802C87DC  C8 01 00 08 */	lfd f0, 8(r1)
/* 802C87E0  EC 00 08 28 */	fsubs f0, f0, f1
/* 802C87E4  EC 02 00 32 */	fmuls f0, f2, f0
/* 802C87E8  D0 03 01 EC */	stfs f0, 0x1ec(r3)
lbl_802C87EC:
/* 802C87EC  54 80 06 3E */	clrlwi r0, r4, 0x18
/* 802C87F0  2C 00 00 0A */	cmpwi r0, 0xa
/* 802C87F4  41 82 00 4C */	beq lbl_802C8840
/* 802C87F8  40 80 00 14 */	bge lbl_802C880C
/* 802C87FC  2C 00 00 08 */	cmpwi r0, 8
/* 802C8800  41 82 00 18 */	beq lbl_802C8818
/* 802C8804  40 80 00 28 */	bge lbl_802C882C
/* 802C8808  48 00 00 5C */	b lbl_802C8864
lbl_802C880C:
/* 802C880C  2C 00 00 0C */	cmpwi r0, 0xc
/* 802C8810  40 80 00 54 */	bge lbl_802C8864
/* 802C8814  48 00 00 40 */	b lbl_802C8854
lbl_802C8818:
/* 802C8818  C0 22 C4 34 */	lfs f1, lit_4511(r2)
/* 802C881C  C0 03 01 EC */	lfs f0, 0x1ec(r3)
/* 802C8820  EC 01 00 32 */	fmuls f0, f1, f0
/* 802C8824  D0 03 01 BC */	stfs f0, 0x1bc(r3)
/* 802C8828  48 00 00 3C */	b lbl_802C8864
lbl_802C882C:
/* 802C882C  C0 22 C4 34 */	lfs f1, lit_4511(r2)
/* 802C8830  C0 03 01 EC */	lfs f0, 0x1ec(r3)
/* 802C8834  EC 01 00 32 */	fmuls f0, f1, f0
/* 802C8838  D0 03 01 BC */	stfs f0, 0x1bc(r3)
/* 802C883C  48 00 00 28 */	b lbl_802C8864
lbl_802C8840:
/* 802C8840  C0 22 C4 30 */	lfs f1, lit_4510(r2)
/* 802C8844  C0 03 01 EC */	lfs f0, 0x1ec(r3)
/* 802C8848  EC 01 00 32 */	fmuls f0, f1, f0
/* 802C884C  D0 03 01 BC */	stfs f0, 0x1bc(r3)
/* 802C8850  48 00 00 14 */	b lbl_802C8864
lbl_802C8854:
/* 802C8854  C0 22 C4 30 */	lfs f1, lit_4510(r2)
/* 802C8858  C0 03 01 EC */	lfs f0, 0x1ec(r3)
/* 802C885C  EC 01 00 32 */	fmuls f0, f1, f0
/* 802C8860  D0 03 01 BC */	stfs f0, 0x1bc(r3)
lbl_802C8864:
/* 802C8864  38 21 00 10 */	addi r1, r1, 0x10
/* 802C8868  4E 80 00 20 */	blr 
