lbl_802DC638:
/* 802DC638  3C A0 80 3C */	lis r5, __vt__10JSUIosBase@ha /* 0x803C2DF8@ha */
/* 802DC63C  38 05 2D F8 */	addi r0, r5, __vt__10JSUIosBase@l /* 0x803C2DF8@l */
/* 802DC640  90 03 00 00 */	stw r0, 0(r3)
/* 802DC644  38 C0 00 00 */	li r6, 0
/* 802DC648  98 C3 00 04 */	stb r6, 4(r3)
/* 802DC64C  3C A0 80 3D */	lis r5, __vt__14JSUInputStream@ha /* 0x803CC4D4@ha */
/* 802DC650  38 05 C4 D4 */	addi r0, r5, __vt__14JSUInputStream@l /* 0x803CC4D4@l */
/* 802DC654  90 03 00 00 */	stw r0, 0(r3)
/* 802DC658  3C A0 80 3D */	lis r5, __vt__20JSURandomInputStream@ha /* 0x803CC4B0@ha */
/* 802DC65C  38 05 C4 B0 */	addi r0, r5, __vt__20JSURandomInputStream@l /* 0x803CC4B0@l */
/* 802DC660  90 03 00 00 */	stw r0, 0(r3)
/* 802DC664  3C A0 80 3D */	lis r5, __vt__18JSUFileInputStream@ha /* 0x803CC518@ha */
/* 802DC668  38 05 C5 18 */	addi r0, r5, __vt__18JSUFileInputStream@l /* 0x803CC518@l */
/* 802DC66C  90 03 00 00 */	stw r0, 0(r3)
/* 802DC670  90 83 00 08 */	stw r4, 8(r3)
/* 802DC674  90 C3 00 0C */	stw r6, 0xc(r3)
/* 802DC678  4E 80 00 20 */	blr 
