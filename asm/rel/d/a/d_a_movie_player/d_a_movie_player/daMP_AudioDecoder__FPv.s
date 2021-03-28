lbl_8087631C:
/* 8087631C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80876320  7C 08 02 A6 */	mflr r0
/* 80876324  90 01 00 14 */	stw r0, 0x14(r1)
/* 80876328  93 E1 00 0C */	stw r31, 0xc(r1)
lbl_8087632C:
/* 8087632C  4B FF F5 55 */	bl daMP_PopReadedBuffer__Fv
/* 80876330  7C 7F 1B 78 */	mr r31, r3
/* 80876334  4B FF FF 0D */	bl daMP_AudioDecode__FP18daMP_THPReadBuffer
/* 80876338  7F E3 FB 78 */	mr r3, r31
/* 8087633C  4B FF F6 41 */	bl daMP_PushReadedBuffer2__FPv
/* 80876340  4B FF FF EC */	b lbl_8087632C
