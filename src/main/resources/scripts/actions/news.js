'use strict';

import fetch from 'isomorphic-fetch';
import * as types from '../constants/customerActionType';
import {checkStatus} from '../utils/fetchStatus';
import {
  constructNewsUrl, 
  constructIfollerUrl, 
  constructInewsUrl,
  constructReservationUrl,
  constructFetchComNews
} from '../utils/constructUrl';


export function fetchNews(newsType) {
  return (dispatch) => {
    dispatch(reqNews(newsType));
    return fetch(constructNewsUrl(newsType), {
      credentials: 'include'
    })
    .then(response => checkStatus(response))
    .then(res => res.json())
    .then(json => dispatch(receiveNews(json)))
    .catch(err => dispatch(failureNews(err)))
  }
}

export function fetchIfollowers() {
  return (dispatch, getState) => {
    const {user:{userType}} = getState();
    dispatch(reqNews('ifollowers'));
    fetch(constructIfollerUrl(userType), {
      credentiails: 'include'
    })
    .then(response => checkStatus(response))
    .then(res => res.json())
    .then(json => dispatch(receiveNews(josn)))
    .catch(err => dispatch(failureNews(err)));
  }
}

export function fetchReservation(query) {
  return (dispatch, getState) => {
    dispatch(reqNews('reservation'));
    return fetch(constructReservationUrl(query), {
      credentials: 'include'
    })
    .then(response => checkStatus(response))
    .then(res => res.json())
    .then(json => dispatch(receiveNews(josn)))
    .catch(err => dispatch(failureNews(err)));
  }
}

export function fetchInews() {
  return (dispatch, getState) => {
    const {user:{userType}} = getState();
    dispatch(reqNews('inews'));
    fetch(constructInewsUrl(userType), {
      credentiails: 'include'
    })
    .then(response => checkStatus(response))
    .then(res => res.json())
    .then(json => dispatch(receiveNews(josn)))
    .catch(err => dispatch(failureNews(err)));
  }
}

export function fetchCompNews(news) {
  return dispatch => {
    dispatch(reqNews(news));
    return fetch(constructFetchComNews())
      .then(checkStatus)
      .then(response => response.json())
      .then(json => dispatch(receiveCompNews(json)))
      .catch(error => dispatch(failureNews(error)));
  }
    
}

function reqNews(newsType) {
  return {
  	type: types.FETCHNEWS,
    newsType
  }
}

function receiveNews(entity) {
  return {
  	type: types.RECEIVENEWS,
  	entity
  }
}

function failureNews(error) {
  return {
  	type: types.FAILURENEWS,
  	error
  }
}

function receiveCompNews(news) {
  return {
    type: types.RECEIVE_COMPNEWS,
    news
  }
}