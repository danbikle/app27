// demo22.js

      var Comment = React.createClass({
        rawMarkup: function() {
          var rawMarkup = marked(this.props.children.toString(), {sanitize: true});
          return { __html: rawMarkup };
        },
        render: function() {
          return (
            <div className="comment">
              <h2 className="commentAuthor">
                {this.props.author}
              </h2>
              <span dangerouslySetInnerHTML={this.rawMarkup()} />
            </div>
          );
        }
      });
      var CommentList = React.createClass({
        render: function() {
          var commentNodes = this.props.theirdata.map(function(comment) {
            return (
              <Comment author={comment.author} key={comment.id}>
                {comment.text}
              </Comment>
            );
          });
          return (
            <div className="commentList">
              {commentNodes}
            </div>
          );
        }
      });
      var CommentForm = React.createClass({
        render: function() {
          return (
            <div className="commentForm">
              Hello, world! I am a CommentForm.
            </div>
          );
        }
      });
      var CommentBox = React.createClass({
        render: function() {
          return (
            <div className="commentBox">
              <h1>Comments</h1>
              <CommentList theirdata={this.props.urdata} />
              <hr />
              <CommentForm />
            </div>
          );
        }
      });
      ReactDOM.render(
        <CommentBox urdata={mydata}/>,
        document.getElementById('content')
      );

