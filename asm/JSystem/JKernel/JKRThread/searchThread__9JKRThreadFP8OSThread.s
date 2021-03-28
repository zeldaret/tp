lbl_802D1960:
/* 802D1960  3C 80 80 43 */	lis r4, sThreadList__9JKRThread@ha
/* 802D1964  38 84 42 8C */	addi r4, r4, sThreadList__9JKRThread@l
/* 802D1968  80 84 00 00 */	lwz r4, 0(r4)
/* 802D196C  48 00 00 20 */	b lbl_802D198C
lbl_802D1970:
/* 802D1970  80 A4 00 00 */	lwz r5, 0(r4)
/* 802D1974  80 05 00 2C */	lwz r0, 0x2c(r5)
/* 802D1978  7C 00 18 40 */	cmplw r0, r3
/* 802D197C  40 82 00 0C */	bne lbl_802D1988
/* 802D1980  7C A3 2B 78 */	mr r3, r5
/* 802D1984  4E 80 00 20 */	blr 
lbl_802D1988:
/* 802D1988  80 84 00 0C */	lwz r4, 0xc(r4)
lbl_802D198C:
/* 802D198C  28 04 00 00 */	cmplwi r4, 0
/* 802D1990  40 82 FF E0 */	bne lbl_802D1970
/* 802D1994  38 60 00 00 */	li r3, 0
/* 802D1998  4E 80 00 20 */	blr 
